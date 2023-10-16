import csv
import os
import sys
import xml.etree.ElementTree as ET
from datetime import datetime
from io import StringIO
from typing import List
from urllib.parse import urlparse

import requests

import shared


def read_last_record(filename: str) -> List[str]:
    if os.path.exists(filename):
        with open(filename, "rb") as file:
            file.seek(0, 2)  # Go to the end of the file

            reversed_content = bytearray()
            prev_char = None

            pos = file.tell()
            while pos > 0:
                file.seek(pos)
                pos -= 1
                char = file.read(1)  # Read one character
                if prev_char is not None and char + prev_char == b'\n"':
                    # Two subsequent characters found, stop reading
                    break

                reversed_content.extend(char)
                prev_char = char

        # Convert the reversed content to a string
        if len(reversed_content) == 0:
            return None

        last_record = reversed_content[::-1].decode('utf-8')

        return list(csv.reader(StringIO(last_record)))[0]
    return None


def only_new_items(sorted_items, pub_date_str: str):
    from_date = datetime.strptime(pub_date_str, global_datetime_format)

    for index, item1 in enumerate(sorted_items):
        item_date = datetime.strptime(item1['pubDateStr'], global_datetime_format)
        if item_date > from_date:
            return sorted_items[index:]
    return None


class RssRequest:
    _HEADERS = {'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8',
        'Accept-Encoding': 'gzip, deflate, br',
        "User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Safari/605.1.15",
        'Accept-Language': 'en-GB,en;q=0.9', 'Connection': 'keep-alive', 'Cookie': '__ddg1_=s0VXGmYGuLRhAbaTLEeE'}

    def __init__(self, url: str):
        self.url = url
        self.headers = dict(RssRequest._HEADERS)
        self.headers['Host'] = urlparse(url).netloc

    def xml(self) -> str:
        try:
            # Send an HTTP GET request with custom headers
            response = requests.get(self.url, headers=self.headers)

            if response.status_code == 200:
                content_type = response.headers.get('content-type', '')

                # Check if the response content is XML
                if 'xml' in content_type:
                    return response.text
                else:
                    print("Response is not XML. Content-Type:", response.headers.get('content-type'))
            else:
                print("HTTP request failed with status code:", response.status_code)

        except requests.exceptions.RequestException as e:
            print("HTTP request error:", e)
        except Exception as e:
            print("An error occurred:", e)


if __name__ == '__main__':
    url = sys.argv[1]
    csv_filename = sys.argv[2]
    print("Processing ", csv_filename)
    if len(sys.argv) > 3:
        # Define the format of the datetime string
        # '%a' represents the abbreviated weekday name (e.g., 'Sun')
        # '%d' represents the day of the month (e.g., '08')
        # '%b' represents the abbreviated month name (e.g., 'Oct')
        # '%Y' represents the year with century as a decimal number (e.g., '2023')
        # '%H' represents the hour (24-hour clock) as a zero-padded decimal number (e.g., '04')
        # '%M' represents the minute as a zero-padded decimal number (e.g., '44')
        # '%S' represents the second as a zero-padded decimal number (e.g., '20')
        # '%z' represents the UTC offset in the form '+HHMM' (e.g., '+0300')
        # Example: "%a, %d %b %Y %H:%M:%S %z"
        global_datetime_format = sys.argv[3]  # %a, %d %b %Y %H:%M:%S %Z
    else:
        global_datetime_format = '%a, %d %b %Y %H:%M:%S %Z'

    parsed_url = urlparse(url)
    host = parsed_url.netloc

    # url = 'https://regnum.ru/rss/news'  # Replace with the desired URL
    headers = {'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8',
        'Accept-Encoding': 'gzip, deflate, br', 'Host': host,
        "User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Safari/605.1.15",
        'Accept-Language': 'en-GB,en;q=0.9', 'Connection': 'keep-alive', 'Cookie': '__ddg1_=s0VXGmYGuLRhAbaTLEeE'}

    try:
        # Send an HTTP GET request with custom headers
        response = requests.get(url, headers=headers)

        if response.status_code == 200:
            contentType = response.headers.get('content-type', '')

            # Check if the response content is XML
            if 'xml' in contentType:
                rss_xml = response.text

                # Parse the RSS XML content
                root = ET.fromstring(rss_xml)

                # Access and print RSS metadata
                # rss_title = root.find(".//title").text
                # rss_link = root.find(".//link").text
                # rss_description = root.find(".//description").text

                # print("RSS Title:", rss_title)
                # print("RSS Link:", rss_link)
                # print("RSS Description:", rss_description)

                rss_items = []

                for item in root.findall(".//item"):
                    title_node = item.find(".//title")
                    item_title = "" if title_node is None else title_node.text

                    link_node = item.find(".//link")
                    item_link = "" if link_node is None else link_node.text

                    description_node = item.find(".//description")
                    item_description = "" if description_node is None else description_node.text

                    pub_date_node = item.find(".//pubDate")
                    pub_date_str = "" if pub_date_node is None else pub_date_node.text

                    # Convert pubDate string to a datetime object for sorting
                    pub_date = datetime.strptime(pub_date_str, global_datetime_format)

                    # Create a dictionary for the current RSS item
                    item_dict = {"pubDate": pub_date,  # Include time zone
                        "pubDateStr": pub_date_str.strip() if pub_date_str is not None else '',
                        "Title": item_title.strip() if item_title is not None else '',
                        "Link": item_link.strip() if item_link is not None else '',
                        "Description": shared.utils.escape_nl_tab(item_description), }

                    # Append the dictionary to the list
                    rss_items.append(item_dict)

                    # Sort the rss_items list by pubDate in ascending order
                sorted_items = sorted(rss_items, key=lambda x: x['pubDate'])

                last_csv_line_array = read_last_record(csv_filename)

                if last_csv_line_array is None:
                    file_mode = 'w'
                    hasHeader = True
                else:
                    file_mode = 'a'
                    hasHeader = False
                    sorted_items = only_new_items(sorted_items, last_csv_line_array[0])

                if sorted_items is None:
                    sys.exit()

                # Create and configure a CSV writer
                with open(csv_filename, mode=file_mode, newline='') as csv_file:
                    fieldnames = ["pubDateStr", "Title", "Link", "Description"]
                    writer = csv.DictWriter(csv_file, fieldnames=fieldnames, extrasaction='ignore')

                    # Write the CSV header
                    if hasHeader is True:
                        writer.writeheader()

                    # Write each item as a row in the CSV file
                    for item in sorted_items:
                        writer.writerow(item)

                # print(f"RSS items saved to {csv_filename}")

            else:
                print("Response is not XML. Content-Type:", response.headers.get('content-type'))
        else:
            print("HTTP request failed with status code:", response.status_code)

    except requests.exceptions.RequestException as e:
        print("HTTP request error:", e)
    except Exception as e:
        print("An error occurred:", e)

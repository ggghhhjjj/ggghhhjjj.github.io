#!/usr/bin/env python3
"""
This script appends RSS feed into a CSV file.

Args:
    --url: RSS url
    --csv: CSV file path name. Script will not append *.csv extension
    --headers: Optional headers separated by spaces. Ex., "accept-language: en-GB,en-US;q=0.9,en;q=0.8"
    --datetime-format: Optional datetime format string
    --debug: Optional print trace massages
    """

import argparse
import subprocess
import feedparser
import csv
import os
import sys
from datetime import datetime
from io import StringIO
from typing import List

import shared


HAS_DEBUG = False


""" Define the format of the datetime string
'%a' represents the abbreviated weekday name (e.g., 'Sun')
'%d' represents the day of the month (e.g., '08')
'%b' represents the abbreviated month name (e.g., 'Oct')
'%Y' represents the year with century as a decimal number (e.g., '2023')
'%H' represents the hour (24-hour clock) as a zero-padded decimal number (e.g., '04')
'%M' represents the minute as a zero-padded decimal number (e.g., '44')
'%S' represents the second as a zero-padded decimal number (e.g., '20')
'%z' represents the UTC offset in the form '+HHMM' (e.g., '+0300')
Example: "%a, %d %b %Y %H:%M:%S %z"""


def parse_arguments():
    parser = argparse.ArgumentParser(description="Appends RSS feed into a CSV file")

    parser.add_argument("--url", help="RSS url")

    parser.add_argument(
        "--csv", help="CSV file path name. Script will not append *.csv extension"
    )

    parser.add_argument(
        "--headers",
        nargs="*",
        default=[
            "accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7",
            "accept-language: en-GB,en-US;q=0.9,en;q=0.8",
            "user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36"
        ],
        help="Optional headers separated by spaces. Ex., 'accept-language: en-GB,en-US;q=0.9,en;q=0.8'.",
    )

    parser.add_argument(
        "--datetime-format",
        required=False,
        default="%a, %d %b %Y %H:%M:%S %z",
        help="Optional datetime format.",
    )

    parser.add_argument(
        "--debug",
        default="False",
        help="Optional print trace massages",
    )

    return parser.parse_args()


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

        last_record = reversed_content[::-1].decode("utf-8")

        return list(csv.reader(StringIO(last_record)))[0]
    return None


def only_new_items(sorted_items, pub_date_str: str, datetime_format: str):
    try:
        from_date = datetime.strptime(pub_date_str, datetime_format)
    except ValueError as e:
        return None
    else:
        for index, item1 in enumerate(sorted_items):
            item_date = datetime.strptime(item1["pubDateStr"], datetime_format)
            if item_date > from_date:
                return sorted_items[index:]
        return None


def make_curl_request(curl_command):
    try:
        global HAS_DEBUG
        if HAS_DEBUG:
            print (curl_command)

        result = subprocess.run(
            curl_command,
            shell=True,
            text=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
        )
        if result.returncode == 0:
            if HAS_DEBUG:
                print (f"result.returncode={result.returncode}")

            return result.stdout
        else:
            print(f"Curl command failed with return code {result.returncode} and error: {result.stderr}")
            return None
    except Exception as e:
        print("Error executing the 'curl' command:", str(e))
        return None


def parse_rss(response_text):
    global HAS_DEBUG
    rss_items = []

    if response_text:
        rss_feed = feedparser.parse(response_text)

        if HAS_DEBUG:
            print(f"rss_feed.entries size is {len(rss_feed.entries)}")

        for entry in rss_feed.entries:

            if HAS_DEBUG:
                print(f"Prcoessing {entry}")

            description = shared.utils.escape_nl_tab(entry.get('description')) if entry.get('description') is not None else ''

            item_dict = {
                "pubDate": entry.published_parsed,
                "pubDateStr": entry.published.strip(),
                "Title": entry.title.strip() if entry.title is not None else "",
                "Link": entry.link.strip() if entry.link is not None else "",
                "Description": description,
            }

            if HAS_DEBUG:
                print(f"Parsed values {item_dict}")

            rss_items.append(item_dict)

    if len(rss_items) == 0:
        print (f"WARNING: no parsed rss items")

    return rss_items


MAGIC_CSV_HEADER_STR="ubDateStr,Title,Link,Description"

def is_row_csv_header(last_csv_line_array):
    raw_string = ','.join(last_csv_line_array)
    return MAGIC_CSV_HEADER_STR == raw_string

def save_to_csv(rss_items, csv_filename, datetime_format):
    global HAS_DEBUG
    sorted_items = sorted(rss_items, key=lambda x: x["pubDate"])

    if HAS_DEBUG:
        print(f"\nsorted_items: {sorted_items}")

    last_csv_line_array = read_last_record(csv_filename)

    if HAS_DEBUG:
        print(f"\nlast_csv_line_array: {last_csv_line_array}")

    is_csv_header = is_row_csv_header(last_csv_line_array)

    if HAS_DEBUG:
        print(f"\nlast_csv_line_array is csv header: {is_csv_header}")

    if last_csv_line_array is None or is_csv_header:
        file_mode = "w"
        hasHeader = True
    else:
        file_mode = "a"
        hasHeader = False
        sorted_items = only_new_items(
            sorted_items, last_csv_line_array[0], datetime_format
        )

    if sorted_items is None:
        if HAS_DEBUG:
            print("WARNING: Because sorted_items is none script finished execution. CSV file has not changed.")
        sys.exit()

    os.makedirs(os.path.dirname(csv_filename), exist_ok=True)

    # Create and configure a CSV writer
    with open(csv_filename, mode=file_mode, newline="") as csv_file:
        fieldnames = ["pubDateStr", "Title", "Link", "Description"]
        writer = csv.DictWriter(csv_file, fieldnames=fieldnames, extrasaction="ignore")

        # Write the CSV header
        if hasHeader is True:
            writer.writeheader()

        # Write each item as a row in the CSV file
        for item in sorted_items:
            writer.writerow(item)

    # print(f"RSS items saved to {csv_filename}")


def main(args):
    global HAS_DEBUG
    HAS_DEBUG = bool(args.debug) if args.debug is not None else False

    rss_url = args.url

    print (f"Processing {rss_url} ...")

    csv_filename = args.csv

    formatted_elements = ['-H "{}"'.format(element) for element in args.headers]
    headers_str = " ".join(formatted_elements)

    curl_command = f'curl --compressed -sk "{rss_url}" {headers_str}'

    response_text = make_curl_request(curl_command)

    if HAS_DEBUG:
        print(f"response_text={response_text}")

    rss_items = parse_rss(response_text)

    save_to_csv(rss_items, csv_filename, args.datetime_format)


if __name__ == "__main__":
    main(parse_arguments())

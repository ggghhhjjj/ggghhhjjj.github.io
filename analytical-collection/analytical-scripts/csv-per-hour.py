# !/usr/bin/env python3

import argparse
import csv
from collections import defaultdict
from datetime import datetime

import shared

"""
The script counts number of daily posts per hour

Args:
    --source: path to the source file from where post should be counted
    --target: new csv file with counts per hour. Script will not append *.csv extension
    --datetime-format: Optional datetime format string
"""


def parse_arguments():
    parser = argparse.ArgumentParser(description="Counts number of daily posts per hour")

    parser.add_argument("--source", help="Path to the source file from where post should be counted")

    parser.add_argument("--target", help="New csv file with counts per hour. Script will not append *.csv extension")

    parser.add_argument("--datetime-format", required=False, default="%a, %d %b %Y %H:%M:%S %z",
                        help="Optional datetime format.", )

    return parser.parse_args()


def main(args):
    csv_daily_publications = args.source
    datetime_format = args.datetime_format
    csv_target = args.target

    print(f"CSV publication per hour Processing {csv_daily_publications} ...")

    hourly_counts = defaultdict(int)

    csv_data = shared.utils.read_csv_file(csv_daily_publications)

    for row in csv_data:
        date_str = row['pubDateStr']  # Assuming the date is in the first column

        pub_date = datetime.strptime(date_str, datetime_format)

        hour = pub_date.hour

        hourly_counts[hour] += 1

    sorted_hours_countm = sorted(hourly_counts.items())

    with open(csv_target, 'w', newline='') as output_file:
        writer = csv.writer(output_file)
        writer.writerow(['Hour', 'Count'])
        writer.writerows(sorted_hours_countm)


if __name__ == "__main__":
    main(parse_arguments())

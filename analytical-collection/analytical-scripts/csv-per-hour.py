# !/usr/bin/env python3

import argparse
import csv

import pandas as pd

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

    df = pd.read_csv(csv_daily_publications)

    # Convert the "pubDateStr" column to datetime
    df['pubDateStr'] = pd.to_datetime(df['pubDateStr'], format=datetime_format)

    # Group the rows by hour and count the rows in each group
    hourly_counts = df.groupby(df['pubDateStr'].dt.hour).size()

    # Convert hourly_counts to a DataFrame with appropriate column names
    hourly_counts_df = hourly_counts.reset_index()
    hourly_counts_df.columns = ['Hour', 'Count']

    # Write the counts to a CSV file
    hourly_counts_df.to_csv(csv_target, index=False)


if __name__ == "__main__":
    main(parse_arguments())

#!/usr/bin/env python3
"""
This script counts rows in CSV files and creates CSV report.

Args:
    --sources: list of source files which rows to be count. Ex., --sources fist.csv second.csv
    --target: report CSV file path name. Script will not append *.csv extension
    --labels: list of names for every source file. Label will the leftmost column of the CSV file. Default: source file
    name. Ex., --labels fist second
"""

import argparse
import csv
import os
from typing import List

import shared


def parse_arguments():
    parser = argparse.ArgumentParser(description='This script counts rows in CSV files and creates CSV report.')

    parser.add_argument('--sources', nargs='+',
                        help='List of source files which rows to be count. Ex., --sources fist.csv second.csv')

    parser.add_argument('--target', help='Report CSV file path name. Script will not append *.csv extension')

    parser.add_argument('--labels', nargs='*',
                        help='List of names for every source file. Label will the leftmost column of the CSV file. '
                             'Default: source file name. Ex., --labels fist second')

    return parser.parse_args()


def main(sources: List[str], target: str, labels: List[str]):
    print(f"CSV Row Count processing {target} ...")

    target_folder = os.path.abspath(os.path.dirname(target))

    os.makedirs(target_folder, exist_ok=True)

    file_row_counts = []

    for i, csv_file in enumerate(sources, start=0):

        print(f"Processing {csv_file}")

        with open(csv_file, 'r', newline='') as file:
            # Create a CSV reader
            reader = csv.DictReader(file)

            row_count = 0

            for row in reader:
                row_count += 1

            name = labels[i] if labels is not None and len(labels) > i else shared.utils.filename_no_extension(csv_file)
            file_row_counts.append([name, row_count])

    with open(target, 'w', newline='') as output_file:
        writer = csv.writer(output_file)
        writer.writerow(['Tag', 'Count'])
        writer.writerows(file_row_counts)


# Main entry point
if __name__ == '__main__':
    args = parse_arguments()

    sources_arg = shared.utils.is_valid_file_path(args.sources)
    target_arg = args.target
    labels_arg = args.labels

    main(sources_arg, target_arg, labels_arg)

#!/usr/bin/env python3
"""
This script searches for a string in a CSV file containing RSS entries
and creates a new CSV file from all the rows where it found the string.

Args:
    --source: path to the source file in which the search should be performed
    --target: new csv file path name. Script will not append *.csv extension
    --find: string which should be searched
    --columns: comma separated csv columns name where string to be searched. Default: Title
"""

import argparse
import csv
import os
import re

import shared


def parse_arguments():
    parser = argparse.ArgumentParser(description='Searches for a string in a CSV file containing RSS '
                                                 'entries and creates a new CSV file from all the rows where it found '
                                                 'the string.')

    parser.add_argument('--source', help='Path to the source file in which the search should be performed')

    parser.add_argument('--target', help='New csv file path name. Script will not append *.csv extension')

    parser.add_argument('--find', help='String which should be searched')

    parser.add_argument('--columns', default='Title',
                        help='Comma separated csv columns name where string to be searched')

    return parser.parse_args()


def main(source: str, target: str, target_string: str, columns: str):
    print(f"Processing {source} for {target_string}")

    target_folder = os.path.abspath(os.path.dirname(target))

    os.makedirs(target_folder, exist_ok=True)

    columns = columns.split(',')

    # Open the CSV file
    with open(source, 'r', newline='') as input_file, open(target, 'w', newline='') as output_file:
        reader = csv.DictReader(input_file)
        fieldnames = reader.fieldnames

        writer = csv.DictWriter(output_file, fieldnames=fieldnames)
        writer.writeheader()

        for row in reader:
            found = any(re.search(target_string, row[column]) for column in columns)
            if found:
                writer.writerow(row)


# Main entry point
if __name__ == '__main__':
    args = parse_arguments()

    source_arg = shared.utils.is_valid_file_path(args.source)[0]
    target_arg = args.target
    find_arg = args.find
    columns_arg = args.columns

    main(source_arg, target_arg, find_arg, columns_arg)

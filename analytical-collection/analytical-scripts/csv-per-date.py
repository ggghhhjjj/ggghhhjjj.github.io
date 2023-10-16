#!/usr/bin/env python3

import argparse
import csv
import os
from csv import DictReader
from datetime import datetime, date

import shared


def date_value(dt) -> date:
    if dt is None:
        return datetime.now().date()
    return datetime.strptime(dt, '%Y-%m-%d').date()


def read_date(reader, date_obj, datetime_format):
    filtered_rows = []

    for row in reader:
        pub_date_str = row['pubDateStr']
        pub_date = datetime.strptime(pub_date_str, datetime_format)

        if pub_date.date() == date_obj:
            filtered_rows.append(row)

    return filtered_rows


def order_by_date(rows, order, datetime_format) -> list[str]:
    if order == 'none':
        return rows

    reverse = True if order == 'desc' else False
    return sorted(rows, key=lambda r: datetime.strptime(r['pubDateStr'], datetime_format), reverse=reverse)


def main(csv_file: str, date_obj: date, path: str, datetime_format: str, order: str):
    print(f"Processing {csv_file}")

    date_sub_folder = date_obj.strftime('%Y-%m-%d')
    folder_path = os.path.join(path, date_sub_folder)
    file_path = os.path.join(folder_path, 'publications.csv')

    os.makedirs(folder_path, exist_ok=True)

    with open(csv_file, 'r', newline='') as infile, open(file_path, 'w', newline='') as outfile:
        reader: DictReader[str] = csv.DictReader(infile)
        fieldnames = reader.fieldnames

        writer = csv.DictWriter(outfile, fieldnames=fieldnames)
        writer.writeheader()

        filtered_rows = read_date(reader, date_obj, datetime_format)

        sorted_rows = order_by_date(filtered_rows, order, datetime_format)

        writer.writerows(sorted_rows)


if __name__ == '__main__':
    # get_required_argument()

    parser = argparse.ArgumentParser(description='Creates CSV file with all rows from a particular date from source CSV'
                                                 ' file with RSS field rows date, title, link, description')

    parser.add_argument('--csv', nargs='?',
                        help='Source CSV file from rows will be extracted')

    parser.add_argument('--date', required=False,
                        help='Date in format 2023-11-30 of rows to be extracted. Default: today')

    parser.add_argument('--path', default='./',
                        help='Base path where created CSV file will be saved in a folder for a particular date. Path '
                             'must exists. Default: ./')

    parser.add_argument('--datetime-format', default='%a, %d %b %Y %H:%M:%S %z',
                        help='Source CSV file date (datetime) format. Default: %a, %d %b %Y %H:%M:%S %z')

    parser.add_argument('--order', default='desc', help='Order or CSV rows asc, decs, ot none. Default: desc')

    args = parser.parse_args()

    csv_arg = shared.utils.is_valid_file_path(args.csv)[0]
    date_arg = date_value(args.date)
    path_arg = shared.utils.is_valid_dir_path(args.path, True)
    datetime_format_arg = args.datetime_format
    order_arg = args.order

    main(csv_arg, date_arg, path_arg, datetime_format_arg, order_arg)

#!/usr/bin/env python3


import csv
from datetime import datetime

import json
import sys


def main(csv_file1, json_file1, datetime_format1):
    data = []

    with open(csv_file1, mode='r', newline='') as file:
        csv_reader = csv.DictReader(file)
        for row in csv_reader:
            data.append(row)

    sorted_data = sorted(data, key=lambda x: datetime.strptime(x['pubDateStr'], datetime_format1), reverse=True)

    with open(json_file1, mode='w') as file:
        json.dump(sorted_data, file, indent=4)


if __name__ == '__main__':
    csv_file = sys.argv[1]
    json_file = sys.argv[2]
    datetime_format = sys.argv[3] if len(sys.argv) > 3 else '%a, %d %b %Y %H:%M:%S %z'
    print("Processing ", csv_file)
    main(csv_file, json_file, datetime_format)

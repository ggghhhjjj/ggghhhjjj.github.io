import argparse
import csv
import os


def is_valid_dir_path(path, create=False):
    if not os.path.isdir(path):
        if create:
            os.makedirs(path, exist_ok=True)
        else:
            raise argparse.ArgumentTypeError(f"'{path}' does not exist. Please create folder.")
    return path


def is_valid_file_path(paths):
    if not isinstance(paths, list):
        input_path = [paths]
    else:
        input_path = paths

    if input_path is None:
        while True:
            input_path = input('Please enter source csv file path: ')
            if input_path:
                break
            else:
                print('Path cannot be empty. Please provide a value.')

    for path in input_path:
        if not os.path.isfile(path):
            raise argparse.ArgumentTypeError(f"'{path}' is not a valid file path.")
    return input_path


def filename_no_extension(path):
    p = os.path.splitext(os.path.basename(path))
    return p[0] if not isinstance(p, list) else p


def read_csv_file(csv_file) -> []:
    csv_data = []
    with open(csv_file, mode='r', newline='') as file:
        reader = csv.DictReader(file)
        for row in reader:
            csv_data.append(row)

    return csv_data


def escape_nl_tab(description):
    description = description.strip() if description is not None else ''
    return description.replace("\n", " ").replace("\t", " ")

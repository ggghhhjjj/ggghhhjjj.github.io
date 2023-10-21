#!/usr/bin/env python3

import argparse
from datetime import datetime

from jinja2 import Environment, FileSystemLoader

import shared


def main(csv_files, template_file, file, title):
    print(f"Processing {csv_files}")

    data_dict = {}
    tags=[]

    for csv_file in csv_files:
        name = shared.utils.filename_no_extension(csv_file)
        csv_data = shared.utils.read_csv_file(csv_file)
        if name.lower().startswith('tag_'.lower()):
            tag = name[len("tag_"):]
            tags.append(tag)

        data_dict[name] = csv_data

    data_dict['_csv_files'] = csv_files
    data_dict['_current_date'] = datetime.now().strftime('%Y-%m-%d %H:%M:%S %Z')
    data_dict['_title'] = title
    data_dict['_tags'] = tags


    env = Environment(loader=FileSystemLoader('./markdown-templates'))

    template = env.get_template(template_file)

    markdown = template.render(**{ 'data': data_dict})

    with open(file, "w") as file:
        file.write(markdown)


if __name__ == '__main__':
    # get_required_argument()

    parser = argparse.ArgumentParser(description='Creates file from a template and csv files')

    parser.add_argument('--csv', nargs='+', help='List of CSV files which values will be populated in the template')

    parser.add_argument('--templates-folder', help='Path to a templates folder',
                        default="./markdown-templates")

    parser.add_argument('--template', help='Jinja2 template file name relative to templates folder')

    parser.add_argument('--file', help='File to be generated')

    parser.add_argument('--title', required=False, help='Document title. Used as _title variable in template. Default: file argument')

    args = parser.parse_args()

    csv_files_arg = shared.utils.is_valid_file_path(args.csv)
    templates_folder_arg = shared.utils.is_valid_dir_path(args.templates_folder, False)
    template_arg = args.template
    s = f"{templates_folder_arg}/{template_arg}"
    shared.utils.is_valid_file_path(s)
    file_arg = args.file
    title_arg = args.title if args.title is not None else shared.utils.filename_no_extension(file_arg)

    main(csv_files_arg, template_arg, file_arg, title_arg)

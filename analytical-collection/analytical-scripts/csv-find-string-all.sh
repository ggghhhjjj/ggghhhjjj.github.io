#!/bin/sh

current_date=$(date +'%Y-%m-%d')

python3 csv-find-string.py --source "../analytical-data/csv/per-days/lenta/$current_date/publications.csv" --target "../analytical-data/csv/per-days/lenta/$current_date/tag_путин.csv" --find "Путин" "$@"
python3 csv-find-string.py --source "../analytical-data/csv/per-days/lenta/$current_date/publications.csv" --target "../analytical-data/csv/per-days/lenta/$current_date/tag_зеленски.csv" --find "Зеленск" "$@"
python3 csv-find-string.py --source "../analytical-data/csv/per-days/lenta/$current_date/publications.csv" --target "../analytical-data/csv/per-days/lenta/$current_date/tag_захарова.csv" --find "Захарова" "$@"
python3 csv-find-string.py --source "../analytical-data/csv/per-days/lenta/$current_date/publications.csv" --target "../analytical-data/csv/per-days/lenta/$current_date/tag_макгрегор.csv" --find "Макгрегор" "$@"
python3 csv-find-string.py --source "../analytical-data/csv/per-days/lenta/$current_date/publications.csv" --target "../analytical-data/csv/per-days/lenta/$current_date/tag_експерт.csv" --find "[Ээ]ксперт[^и]" "$@"
#
python3 csv-find-string.py --source "../analytical-data/csv/per-days/regnum/$current_date/publications.csv" --target "../analytical-data/csv/per-days/regnum/$current_date/tag_путин.csv" --find "Путин" "$@"
python3 csv-find-string.py --source "../analytical-data/csv/per-days/regnum/$current_date/publications.csv" --target "../analytical-data/csv/per-days/regnum/$current_date/tag_зеленски.csv" --find "Зеленск" "$@"
python3 csv-find-string.py --source "../analytical-data/csv/per-days/regnum/$current_date/publications.csv" --target "../analytical-data/csv/per-days/regnum/$current_date/tag_захарова.csv" --find "Захарова" "$@"
python3 csv-find-string.py --source "../analytical-data/csv/per-days/regnum/$current_date/publications.csv" --target "../analytical-data/csv/per-days/regnum/$current_date/tag_макгрегор.csv" --find "Макгрегор" "$@"
python3 csv-find-string.py --source "../analytical-data/csv/per-days/regnum/$current_date/publications.csv" --target "../analytical-data/csv/per-days/regnum/$current_date/tag_експерт.csv" --find "[Ээ]ксперт[^и]" "$@"
#
python3 csv-find-string.py --source "../analytical-data/csv/per-days/ren/$current_date/publications.csv" --target "../analytical-data/csv/per-days/ren/$current_date/tag_путин.csv" --find "Путин" "$@"
python3 csv-find-string.py --source "../analytical-data/csv/per-days/ren/$current_date/publications.csv" --target "../analytical-data/csv/per-days/ren/$current_date/tag_зеленски.csv" --find "Зеленск" "$@"
python3 csv-find-string.py --source "../analytical-data/csv/per-days/ren/$current_date/publications.csv" --target "../analytical-data/csv/per-days/ren/$current_date/tag_захарова.csv" --find "Захарова" "$@"
python3 csv-find-string.py --source "../analytical-data/csv/per-days/ren/$current_date/publications.csv" --target "../analytical-data/csv/per-days/ren/$current_date/tag_макгрегор.csv" --find "Макгрегор" "$@"
python3 csv-find-string.py --source "../analytical-data/csv/per-days/ren/$current_date/publications.csv" --target "../analytical-data/csv/per-days/ren/$current_date/tag_експерт.csv" --find "[Ээ]ксперт[^и]" "$@"
#
python3 csv-find-string.py --source "../analytical-data/csv/per-days/rg/$current_date/publications.csv" --target "../analytical-data/csv/per-days/rg/$current_date/tag_путин.csv" --find "Путин" "$@"
python3 csv-find-string.py --source "../analytical-data/csv/per-days/rg/$current_date/publications.csv" --target "../analytical-data/csv/per-days/rg/$current_date/tag_зеленски.csv" --find "Зеленск" "$@"
python3 csv-find-string.py --source "../analytical-data/csv/per-days/rg/$current_date/publications.csv" --target "../analytical-data/csv/per-days/rg/$current_date/tag_захарова.csv" --find "Захарова" "$@"
python3 csv-find-string.py --source "../analytical-data/csv/per-days/rg/$current_date/publications.csv" --target "../analytical-data/csv/per-days/rg/$current_date/tag_макгрегор.csv" --find "Макгрегор" "$@"
python3 csv-find-string.py --source "../analytical-data/csv/per-days/rg/$current_date/publications.csv" --target "../analytical-data/csv/per-days/rg/$current_date/tag_експерт.csv" --find "[Ээ]ксперт[^и]" "$@"
#
python3 csv-find-string.py --source "../analytical-data/csv/per-days/ria/$current_date/publications.csv" --target "../analytical-data/csv/per-days/ria/$current_date/tag_путин.csv" --find "Путин" "$@"
python3 csv-find-string.py --source "../analytical-data/csv/per-days/ria/$current_date/publications.csv" --target "../analytical-data/csv/per-days/ria/$current_date/tag_зеленски.csv" --find "Зеленск" "$@"
python3 csv-find-string.py --source "../analytical-data/csv/per-days/ria/$current_date/publications.csv" --target "../analytical-data/csv/per-days/ria/$current_date/tag_захарова.csv" --find "Захарова" "$@"
python3 csv-find-string.py --source "../analytical-data/csv/per-days/ria/$current_date/publications.csv" --target "../analytical-data/csv/per-days/ria/$current_date/tag_макгрегор.csv" --find "Макгрегор" "$@"
python3 csv-find-string.py --source "../analytical-data/csv/per-days/ria/$current_date/publications.csv" --target "../analytical-data/csv/per-days/ria/$current_date/tag_експерт.csv" --find "[Ээ]ксперт[^и]" "$@"
#
python3 csv-find-string.py --source "../analytical-data/csv/per-days/rt/$current_date/publications.csv" --target "../analytical-data/csv/per-days/rt/$current_date/tag_путин.csv" --find "Путин" "$@"
python3 csv-find-string.py --source "../analytical-data/csv/per-days/rt/$current_date/publications.csv" --target "../analytical-data/csv/per-days/rt/$current_date/tag_зеленски.csv" --find "Зеленск" "$@"
python3 csv-find-string.py --source "../analytical-data/csv/per-days/rt/$current_date/publications.csv" --target "../analytical-data/csv/per-days/rt/$current_date/tag_захарова.csv" --find "Захарова" "$@"
python3 csv-find-string.py --source "../analytical-data/csv/per-days/rt/$current_date/publications.csv" --target "../analytical-data/csv/per-days/rt/$current_date/tag_макгрегор.csv" --find "Макгрегор" "$@"
python3 csv-find-string.py --source "../analytical-data/csv/per-days/rt/$current_date/publications.csv" --target "../analytical-data/csv/per-days/rt/$current_date/tag_експерт.csv" --find "[Ээ]ксперт[^и]" "$@"
#
python3 csv-find-string.py --source "../analytical-data/csv/per-days/tass/$current_date/publications.csv" --target "../analytical-data/csv/per-days/tass/$current_date/tag_путин.csv" --find "Путин" "$@"
python3 csv-find-string.py --source "../analytical-data/csv/per-days/tass/$current_date/publications.csv" --target "../analytical-data/csv/per-days/tass/$current_date/tag_зеленски.csv" --find "Зеленск" "$@"
python3 csv-find-string.py --source "../analytical-data/csv/per-days/tass/$current_date/publications.csv" --target "../analytical-data/csv/per-days/tass/$current_date/tag_захарова.csv" --find "Захарова" "$@"
python3 csv-find-string.py --source "../analytical-data/csv/per-days/tass/$current_date/publications.csv" --target "../analytical-data/csv/per-days/tass/$current_date/tag_макгрегор.csv" --find "Макгрегор" "$@"
python3 csv-find-string.py --source "../analytical-data/csv/per-days/tass/$current_date/publications.csv" --target "../analytical-data/csv/per-days/tass/$current_date/tag_експерт.csv" --find "[Ээ]ксперт[^и]" "$@"
#
python3 csv-find-string.py --source "../analytical-data/csv/per-days/vseruss/$current_date/publications.csv" --target "../analytical-data/csv/per-days/vseruss/$current_date/tag_путин.csv" --find "Путин" "$@"
python3 csv-find-string.py --source "../analytical-data/csv/per-days/vseruss/$current_date/publications.csv" --target "../analytical-data/csv/per-days/vseruss/$current_date/tag_зеленски.csv" --find "Зеленск" "$@"
python3 csv-find-string.py --source "../analytical-data/csv/per-days/vseruss/$current_date/publications.csv" --target "../analytical-data/csv/per-days/vseruss/$current_date/tag_захарова.csv" --find "Захарова" "$@"
python3 csv-find-string.py --source "../analytical-data/csv/per-days/vseruss/$current_date/publications.csv" --target "../analytical-data/csv/per-days/vseruss/$current_date/tag_макгрегор.csv" --find "Макгрегор" "$@"
python3 csv-find-string.py --source "../analytical-data/csv/per-days/vseruss/$current_date/publications.csv" --target "../analytical-data/csv/per-days/vseruss/$current_date/tag_експерт.csv" --find "[Ээ]ксперт[^и]" "$@"
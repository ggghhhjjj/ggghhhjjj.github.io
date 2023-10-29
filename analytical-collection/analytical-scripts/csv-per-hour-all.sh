#!/bin/sh

. ../../.venv/bin/activate

if [ $# -eq 0 ]; then
    current_date=$(date +'%Y-%m-%d')
else
    datetime="$1"
    current_date=$(echo "$datetime" | cut -d ' ' -f 1)
fi

python3 csv-per-hour.py --source "../analytical-data/csv/per-days/lenta/$current_date/publications.csv"         --target "../analytical-data/csv/per-days/lenta/$current_date/per_hour.csv"
python3 csv-per-hour.py --source "../analytical-data/csv/per-days/ren/$current_date/publications.csv"           --target "../analytical-data/csv/per-days/ren/$current_date/per_hour.csv"
python3 csv-per-hour.py --source "../analytical-data/csv/per-days/rg/$current_date/publications.csv"            --target "../analytical-data/csv/per-days/rg/$current_date/per_hour.csv"
python3 csv-per-hour.py --source "../analytical-data/csv/per-days/ria/$current_date/publications.csv"           --target "../analytical-data/csv/per-days/ria/$current_date/per_hour.csv"
python3 csv-per-hour.py --source "../analytical-data/csv/per-days/regnum/$current_date/publications.csv"        --target "../analytical-data/csv/per-days/regnum/$current_date/per_hour.csv" --datetime-format "%a, %d %b %Y %H:%M:%S %Z"
python3 csv-per-hour.py --source "../analytical-data/csv/per-days/rt/$current_date/publications.csv"            --target "../analytical-data/csv/per-days/rt/$current_date/per_hour.csv"
python3 csv-per-hour.py --source "../analytical-data/csv/per-days/tass/$current_date/publications.csv"          --target "../analytical-data/csv/per-days/tass/$current_date/per_hour.csv"
python3 csv-per-hour.py --source "../analytical-data/csv/per-days/vseruss/$current_date/publications.csv"       --target "../analytical-data/csv/per-days/vseruss/$current_date/per_hour.csv"
python3 csv-per-hour.py --source "../analytical-data/csv/per-days/rbc/$current_date/publications.csv"           --target "../analytical-data/csv/per-days/rbc/$current_date/per_hour.csv"
python3 csv-per-hour.py --source "../analytical-data/csv/per-days/rambler-world/$current_date/publications.csv" --target "../analytical-data/csv/per-days/rambler-world/$current_date/per_hour.csv"

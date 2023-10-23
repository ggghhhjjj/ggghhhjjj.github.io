#!/bin/sh

. ../../.venv/bin/activate

if [ $# -eq 0 ]; then
    current_date=$(date +'%Y-%m-%d')
else
    # If script arguments were provided, use the first argument as the date
    current_date="$1"
fi

python3 csv-per-date.py --csv "../analytical-data/csv/lenta.csv"         --date "$current_date"   --path "../analytical-data/csv/per-days/lenta"
python3 csv-per-date.py --csv "../analytical-data/csv/ren.csv"           --date "$current_date"   --path "../analytical-data/csv/per-days/ren"
python3 csv-per-date.py --csv "../analytical-data/csv/rg.csv"            --date "$current_date"   --path "../analytical-data/csv/per-days/rg"
python3 csv-per-date.py --csv "../analytical-data/csv/ria.csv"           --date "$current_date"   --path "../analytical-data/csv/per-days/ria"
python3 csv-per-date.py --csv "../analytical-data/csv/regnum.csv"        --date "$current_date"   --path "../analytical-data/csv/per-days/regnum" --datetime-format "%a, %d %b %Y %H:%M:%S %Z"
python3 csv-per-date.py --csv "../analytical-data/csv/rt.csv"            --date "$current_date"   --path "../analytical-data/csv/per-days/rt"
python3 csv-per-date.py --csv "../analytical-data/csv/tass.csv"          --date "$current_date"   --path "../analytical-data/csv/per-days/tass"
python3 csv-per-date.py --csv "../analytical-data/csv/vseruss.csv"       --date "$current_date"   --path "../analytical-data/csv/per-days/vseruss"
python3 csv-per-date.py --csv "../analytical-data/csv/rbc.csv"           --date "$current_date"   --path "../analytical-data/csv/per-days/rbc"
python3 csv-per-date.py --csv "../analytical-data/csv/rambler-world.csv" --date "$current_date"   --path "../analytical-data/csv/per-days/rambler-world"
python3 csv-per-date.py --csv "../analytical-data/csv/news-ru.csv"       --date "$current_date"    --path "../analytical-data/csv/per-days/news-ru"

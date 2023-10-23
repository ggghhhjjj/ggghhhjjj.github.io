#!/bin/sh

. ../../.venv/bin/activate

python3 csv-per-date.py --csv "../analytical-data/csv/lenta.csv"            --path "../analytical-data/csv/per-days/lenta" "$@"
python3 csv-per-date.py --csv "../analytical-data/csv/regnum.csv"           --path "../analytical-data/csv/per-days/regnum" --datetime-format "%a, %d %b %Y %H:%M:%S %Z" "$@"
python3 csv-per-date.py --csv "../analytical-data/csv/ren.csv"              --path "../analytical-data/csv/per-days/ren" "$@"
python3 csv-per-date.py --csv "../analytical-data/csv/rg.csv"               --path "../analytical-data/csv/per-days/rg" "$@"
python3 csv-per-date.py --csv "../analytical-data/csv/ria.csv"              --path "../analytical-data/csv/per-days/ria" "$@"
python3 csv-per-date.py --csv "../analytical-data/csv/rt.csv"               --path "../analytical-data/csv/per-days/rt" "$@"
python3 csv-per-date.py --csv "../analytical-data/csv/tass.csv"             --path "../analytical-data/csv/per-days/tass" "$@"
python3 csv-per-date.py --csv "../analytical-data/csv/vseruss.csv"          --path "../analytical-data/csv/per-days/vseruss" "$@"
python3 csv-per-date.py --csv "../analytical-data/csv/rbc.csv"              --path "../analytical-data/csv/per-days/rbc" "$@"
python3 csv-per-date.py --csv "../analytical-data/csv/rambler-world.csv"    --path "../analytical-data/csv/per-days/rambler-world" "$@"

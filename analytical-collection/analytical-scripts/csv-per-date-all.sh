#!/bin/sh

/Users/dandelion/.pyenv/shims/python3 csv-per-date.py --csv "../analytical-data/csv/lenta.csv"   --path "../analytical-data/csv/per-days/lenta" "$@"
/Users/dandelion/.pyenv/shims/python3 csv-per-date.py --csv "../analytical-data/csv/regnum.csv"  --path "../analytical-data/csv/per-days/regnum" --datetime-format "%a, %d %b %Y %H:%M:%S %Z" "$@"
/Users/dandelion/.pyenv/shims/python3 csv-per-date.py --csv "../analytical-data/csv/ren.csv"     --path "../analytical-data/csv/per-days/ren" "$@"
/Users/dandelion/.pyenv/shims/python3 csv-per-date.py --csv "../analytical-data/csv/rg.csv"      --path "../analytical-data/csv/per-days/rg" "$@"
/Users/dandelion/.pyenv/shims/python3 csv-per-date.py --csv "../analytical-data/csv/ria.csv"     --path "../analytical-data/csv/per-days/ria" "$@"
/Users/dandelion/.pyenv/shims/python3 csv-per-date.py --csv "../analytical-data/csv/rt.csv"      --path "../analytical-data/csv/per-days/rt" "$@"
/Users/dandelion/.pyenv/shims/python3 csv-per-date.py --csv "../analytical-data/csv/tass.csv"    --path "../analytical-data/csv/per-days/tass" "$@"
/Users/dandelion/.pyenv/shims/python3 csv-per-date.py --csv "../analytical-data/csv/vseruss.csv" --path "../analytical-data/csv/per-days/vseruss" "$@"

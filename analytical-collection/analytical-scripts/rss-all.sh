#!/bin/sh
/Users/dandelion/.pyenv/shims/python3 rss-to-csv.py "https://regnum.ru/rss/news" "../analytical-data/csv/regnum.csv"
/Users/dandelion/.pyenv/shims/python3 rss-to-csv.py "https://tass.ru/rss/v2.xml" "../analytical-data/csv/tass.csv" "%a, %d %b %Y %H:%M:%S %z"
/Users/dandelion/.pyenv/shims/python3 rss-to-csv.py "https://rg.ru/xml/index.xml" "../analytical-data/csv/rg.csv" "%a, %d %b %Y %H:%M:%S %z"
/Users/dandelion/.pyenv/shims/python3 rss-to-csv.py "https://ria.ru/export/rss2/archive/index.xml" "../analytical-data/csv/ria.csv" "%a, %d %b %Y %H:%M:%S %z"
/Users/dandelion/.pyenv/shims/python3 rss-to-csv.py "https://russian.rt.com/rss" "../analytical-data/csv/rt.csv" "%a, %d %b %Y %H:%M:%S %z"
/Users/dandelion/.pyenv/shims/python3 rss-to-csv.py "https://ren.tv/export/global/rss.xml" "../analytical-data/csv/ren.csv" "%a, %d %b %Y %H:%M:%S %z"
/Users/dandelion/.pyenv/shims/python3 rss-to-csv.py "https://lenta.ru/rss/google-newsstand/main/" "../analytical-data/csv/lenta.csv" "%a, %d %b %Y %H:%M:%S %z"
/Users/dandelion/.pyenv/shims/python3 rss-to-csv.py "https://vseruss.com/feed/" "../analytical-data/csv/vseruss.csv" "%a, %d %b %Y %H:%M:%S %z"

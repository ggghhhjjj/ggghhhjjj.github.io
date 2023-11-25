#!/bin/sh

. ../../venv/bin/activate

python3 rss-curl-to-csv.py --url "https://regnum.ru/rss/news"                        --csv "../analytical-data/csv/regnum.csv" --datetime-format "%a, %d %b %Y %H:%M:%S %Z"
python3 rss-curl-to-csv.py --url "https://tass.ru/rss/v2.xml"                        --csv "../analytical-data/csv/tass.csv"
python3 rss-curl-to-csv.py --url "https://rg.ru/xml/index.xml"                       --csv "../analytical-data/csv/rg.csv"
python3 rss-curl-to-csv.py --url "https://ria.ru/export/rss2/archive/index.xml"      --csv "../analytical-data/csv/ria.csv"
python3 rss-curl-to-csv.py --url "https://russian.rt.com/rss"                        --csv "../analytical-data/csv/rt.csv"
python3 rss-curl-to-csv.py --url "https://ren.tv/export/global/rss.xml"              --csv "../analytical-data/csv/ren.csv" --headers "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8" "Accept-Encoding: gzip, deflate, br" "Host: ren.tv" "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Safari/605.1.15" "Accept-Language: en-GB,en;q=0.9" "Connection: keep-alive" "Cookie: __ddg1_=s0VXGmYGuLRhAbaTLEeE"
python3 rss-curl-to-csv.py --url "https://lenta.ru/rss/google-newsstand/main/"       --csv "../analytical-data/csv/lenta.csv"
python3 rss-curl-to-csv.py --url "https://vseruss.com/feed/"                         --csv "../analytical-data/csv/vseruss.csv"
python3 rss-curl-to-csv.py --url "https://rssexport.rbc.ru/rbcnews/news/30/full.rss" --csv "../analytical-data/csv/rbc.csv"
python3 rss-curl-to-csv.py --url "https://news.rambler.ru/rss/world/"                --csv "../analytical-data/csv/rambler-world.csv"
# python3 rss-curl-to-csv.py --url "https://news.ru/rss/"                              --csv "../analytical-data/csv/news-ru.csv"


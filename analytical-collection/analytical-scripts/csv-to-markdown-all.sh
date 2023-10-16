#!/bin/sh

current_date=$(date +'%Y-%m-%d')

python3 csv-to-markdown.py --csv "../analytical-data/csv/per-days/lenta/$current_date/publications.csv"   --template "media-daily-stats.md.j2" --file "../../_medias/$current_date-lenta.md"      --title "lenta.ru" "$@"
python3 csv-to-markdown.py --csv "../analytical-data/csv/per-days/regnum/$current_date/publications.csv"  --template "media-daily-stats.md.j2" --file "../../_medias/$current_date-regnum.md"     --title "regnum.ru" "$@"
python3 csv-to-markdown.py --csv "../analytical-data/csv/per-days/ren/$current_date/publications.csv"     --template "media-daily-stats.md.j2" --file "../../_medias/$current_date-ren.md"        --title "ren.tv" "$@"
python3 csv-to-markdown.py --csv "../analytical-data/csv/per-days/rg/$current_date/publications.csv"      --template "media-daily-stats.md.j2" --file "../../_medias/$current_date-rg.md"         --title "rg.ru" "$@"
python3 csv-to-markdown.py --csv "../analytical-data/csv/per-days/ria/$current_date/publications.csv"     --template "media-daily-stats.md.j2" --file "../../_medias/$current_date-ria.md"        --title "ria.ru" "$@"
python3 csv-to-markdown.py --csv "../analytical-data/csv/per-days/rt/$current_date/publications.csv"      --template "media-daily-stats.md.j2" --file "../../_medias/$current_date-rt.md"         --title "russian.rt.com" "$@"
python3 csv-to-markdown.py --csv "../analytical-data/csv/per-days/tass/$current_date/publications.csv"    --template "media-daily-stats.md.j2" --file "../../_medias/$current_date-tass.md"       --title "tass.ru" "$@"
python3 csv-to-markdown.py --csv "../analytical-data/csv/per-days/vseruss/$current_date/publications.csv" --template "media-daily-stats.md.j2" --file "../../_medias/$current_date-vseruss.md"    --title "vseruss.com" "$@"

#!/bin/sh

if [ $# -eq 0 ]; then
    current_date=$(date +'%Y-%m-%d')
else
    # If script arguments were provided, use the first argument as the date
    current_date="$1"
fi

# sh "./rss-all.sh" "$current_date"
sh "./csv-per-date-all.sh" "$current_date"
sh "./csv-find-string-all.sh" "$current_date"
sh "./csv-rows-count-all.sh" "$current_date"
sh "csv-to-markdown-all.sh" "$current_date"

echo "Done."

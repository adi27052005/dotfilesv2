#!/bin/bash

query=$(echo '' | rofi -dmenu -p 'YouTube' | tr ' ' '+')

case $query in
    "") exit
    ;;
    " ") exit
    ;;
    *) firefox --new-tab https://youtube.com/results?search_query=$query
    ;;
esac




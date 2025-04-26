#!/bin/sh

i=""
case $1 in
    1) notify-send "$i" "$(cal | sed 's/\(\s\)\('"$(date +%_d)"'\)\(\s\)/\1<span color=\"#fb4934\">\2<\/span>\3/g')" -h string:markup:true ;;
esac

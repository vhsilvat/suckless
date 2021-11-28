#!/bin/sh
case $1 in
    1) setsid -f "$TERMINAL" -e nmtui ;;
esac

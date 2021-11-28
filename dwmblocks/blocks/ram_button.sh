#!/bin/sh
case $1 in
    1) setsid -f "$TERMINAL" -e htop ;;
esac

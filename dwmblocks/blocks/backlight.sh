#!/bin/sh

backlight="$(xbacklight | sed 's/\..*//')"
i=""

printf "%s%%\n" "$i $backlight"

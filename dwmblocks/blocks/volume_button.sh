#!/bin/sh

case $1 in
    1) pactl set-sink-volume @DEFAULT_SINK@ +5% & pkill -RTMIN+9 dwmblocks ;;
    2) pactl set-sink-mute @DEFAULT_SINK@ toggle & pkill -RTMIN+9 dwmblocks ;;
    3) pactl set-sink-volume @DEFAULT_SINK@ -5% & pkill -RTMIN+9 dwmblocks ;;
esac

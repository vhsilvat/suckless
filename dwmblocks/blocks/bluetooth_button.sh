#!/bin/sh

btinfo="$(bluetoothctl info)"
if [ "$btinfo" != "Missing device address argument" ]; then
  icon=""
  btname="none"
else
  icon=""
  btname="$btinfo | grep "Name" | awk '{print $2}'"
fi

case $1 in
  1) setsid -f "$TERMINAL" -e bluetuith & pkill -RTMIN+7 dwmblocks ;;
  3) notify-send "Device: $icon $btname" & pkill -RTMIN+7 dwmblocks ;;
esac

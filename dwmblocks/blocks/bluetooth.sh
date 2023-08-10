#!/bin/sh

btinfo="$(bluetoothctl info)"
if [ "$btinfo" != "Missing device address argument" ]; then
  icon=""
  btname="-"
else
  icon=""
  btname="$btinfo | grep "Name" | awk '{print $2}'"
fi

printf "%s\\n" "$icon $btname"

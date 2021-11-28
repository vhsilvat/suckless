#!/bin/sh

ethstatus="$(cat /sys/class/net/eth0/operstate)"
wifistatus="$(cat /sys/class/net/wlan0/operstate)"
wifissid="$(nmcli -t -f NAME connection show --active)"
wifiperc="$(grep "^\s*w" /proc/net/wireless | awk '{ print int($3 * 100 / 70) "%" }')"

if [ $ethstatus = "up" ]; then
    netstatus="  Ether"
elif [ $wifistatus = "up" ]; then
    netstatus=" $wifiperc%"
else
    netstatus=" Down"
fi

printf "$netstatus"

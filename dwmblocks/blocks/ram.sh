#!/bin/sh

#ICONn="" # icon for normal temperatures
#ICONc="" # icon for critical temperatures

#crit=70 # critical temperature

#read -r temp </sys/class/thermal/thermal_zone0/temp
#temp=${temp%???}
#
#if [ "$temp" -lt "$crit" ] ; then
#    printf "%s°C" "$ICONn $temp"
#else
#    printf "%s°C" "$ICONc $temp"
#fi

ram="$(free -h | awk '/^Mem.:/ { print $3 "|" $2}' | sed s/i//g)"
i="󰍛"

printf "$i $ram"

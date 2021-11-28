#!/bin/sh

read -r status < /sys/class/power_supply/AC/online
read -r capacity < /sys/class/power_supply/BAT0/capacity

if [ $status = "1" ] && [ $capacity = "100" ]; then
	i=""
elif [ $status = "1" ] && [ $capacity != "100" ]; then 
	i=""
else
	case ${capacity%?} in
		8|9|10) i="" ;;
		6|7) 	i="" ;;
		4|5)	i="" ;;
		2|3)	i="" ;;
		1)	i="" ;;
		*)	i=""
	esac
fi

printf "%s%%\n" "$i $capacity"



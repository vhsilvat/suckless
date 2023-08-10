#!/bin/sh

case $1 in
	1) xbacklight +5 & pkill -RTMIN+8 dwmblocks ;;
	3) xbacklight -5 & pkill -RTMIN+8 dwmblocks ;;
esac

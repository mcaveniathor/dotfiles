#!/bin/sh

i3status --config ~/.i3status.conf | while :
do
	read line
	playing=$(mpc |head -1)
	echo "$playing | $line" || exit 1
done

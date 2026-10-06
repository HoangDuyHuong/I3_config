#!/usr/bin/env bash
# This file launch the bar/s
exec 9>"${HOME}/.config/polybar/emilia/launch.lock"
flock -n 9 || exit 0

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

unset I3SOCK

for mon in $(polybar --list-monitors | cut -d":" -f1); do
	MONITOR=$mon polybar -q emi-bar -c "${HOME}"/.config/polybar/emilia/config.ini &
done

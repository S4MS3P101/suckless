#!/bin/bash

battery_state=$(cat /sys/class/power_supply/BAT0/status)
battery_info=$(cat /sys/class/power_supply/BAT0/capacity)

if [[ "$battery_state" == "Charging" ]]; then
    icon="󱐋"
elif [[ "$battery_state" == "Full" ]]; then
    icon=" "
else
    if [ "$battery_info" -eq 0 ]; then
        icon=" "
    elif [ "$battery_info" -le 20 ]; then
        icon=" "
    elif [ "$battery_info" -le 50 ]; then
        icon=" "
    elif [ "$battery_info" -le 75 ]; then
        icon=" "
    else
        icon=" " 
    fi
fi

echo "$icon $battery_info%"

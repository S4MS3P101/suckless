#!/bin/bash

BATTERY_PATH="/sys/class/power_supply/BAT0"

if [ ! -d "$BATTERY_PATH" ]; then
    echo "n/a"
    exit 1
fi

battery_level=$(cat "$BATTERY_PATH/capacity" 2>/dev/null)
charging_status=$(cat "$BATTERY_PATH/status" 2>/dev/null)

if [[ "$charging_status" == "Charging" ]]; then
    if [ "$battery_level" -eq 100 ]; then
        icon="󰂅"
    elif [ "$battery_level" -ge 90 ]; then
        icon="󰂋"
    elif [ "$battery_level" -ge 80 ]; then
        icon="󰂊"
    elif [ "$battery_level" -ge 70 ]; then
        icon="󰢞"
    elif [ "$battery_level" -ge 60 ]; then
        icon="󰂉"
    elif [ "$battery_level" -ge 50 ]; then
        icon="󰢝"
    elif [ "$battery_level" -ge 40 ]; then
        icon="󰂈"
    elif [ "$battery_level" -ge 30 ]; then
        icon="󰂇"
    elif [ "$battery_level" -ge 20 ]; then
        icon="󰂆"
    elif [ "$battery_level" -ge 10 ]; then
        icon="󰢜"
    else
        icon="󰢟"
    fi
else
    if [ "$battery_level" -eq 100 ]; then
        icon="󰁹"
    elif [ "$battery_level" -ge 90 ]; then
        icon="󰂂"
    elif [ "$battery_level" -ge 80 ]; then
        icon="󰂁"
    elif [ "$battery_level" -ge 70 ]; then
        icon="󰂀"
    elif [ "$battery_level" -ge 60 ]; then
        icon="󰁿"
    elif [ "$battery_level" -ge 50 ]; then
        icon="󰁾"
    elif [ "$battery_level" -ge 40 ]; then
        icon="󰁽"
    elif [ "$battery_level" -ge 30 ]; then
        icon="󰁼"
    elif [ "$battery_level" -ge 20 ]; then
        icon="󰁻"
    elif [ "$battery_level" -ge 10 ]; then
        icon="󰁺"
    else
        icon="󰂎"
    fi
fi

echo -n "$icon $battery_level%"

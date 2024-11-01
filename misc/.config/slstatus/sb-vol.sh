#!/bin/bash

output=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)
volume=$(echo "$output" | grep -oP '\d+\.\d+' | head -1)
muted=$(echo "$output" | grep -o 'MUTED')

volume_percentage=$(awk "BEGIN {printf \"%.0f\", $volume * 100}")

if [ -n "$muted" ]; then
    icon=""
else
    if [ "$volume_percentage" -eq 0 ]; then
        icon=""
    elif [ "$volume_percentage" -le 25 ]; then
        icon=""
    elif [ "$volume_percentage" -le 50 ]; then
        icon=""
    else
        icon=""
    fi
fi

echo "$icon  $volume_percentage%"

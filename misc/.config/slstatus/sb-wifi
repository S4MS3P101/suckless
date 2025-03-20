#!/bin/bash

ICON_OFF="󰤭 "      
ICON_WIFI_NA="󰤯  n/a"      
ICON_WEAK="󰤟 "
ICON_MODERATE="󰤢 "
ICON_STRONG="󰤥 "
ICON_VERY_STRONG="󰤨 "

if  nmcli radio wifi | grep -q disabled; then
    echo "$ICON_OFF"
    exit 0
fi

if nmcli -t -f ACTIVE,SSID dev wifi | grep -q '^yes'; then

    SIGNAL=$(nmcli -f IN-USE,SIGNAL dev wifi | grep '*' | awk '{print $2}')
    
    if [ "$SIGNAL" -ge 85 ]; then
        echo "$ICON_VERY_STRONG $SIGNAL%"
    elif [ "$SIGNAL" -ge 75 ]; then
        echo "$ICON_STRONG $SIGNAL%"
    elif [ "$SIGNAL" -ge 50 ]; then
        echo "$ICON_MODERATE $SIGNAL%"
    else
        echo "$ICON_WEAK $SIGNAL%"
    fi
else
    echo "$ICON_WIFI_NA"
fi

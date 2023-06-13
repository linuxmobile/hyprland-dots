#!/bin/bash

playerctl_status=$(playerctl status 2>/dev/null)

if [[ $playerctl_status == "Playing" ]]; then
    title=$(playerctl metadata title 2>/dev/null)
    echo '{"text":"󰎈 󰏤","class":"playing","title":"$title"}'
elif [[ $playerctl_status == "Paused" ]]; then
    title=$(playerctl metadata title 2>/dev/null)
    echo '{"text":"󰎈 󰐊","class":"paused","title":"$title"}'
else
    echo '{"text":""}'
fi

#!/bin/sh

filtered=$(pacmd list-sink-inputs | grep "index\|muted\|wallstream" | tac | grep -A3 "wallstream" | xargs) 
muted=$(echo $filtered | awk '{print $5}')
index=$(echo $filtered | awk '{print $7}')

if [[ $muted == "yes" ]]; then
    pacmd set-sink-input-mute $index no
else
    pacmd set-sink-input-mute $index yes
fi

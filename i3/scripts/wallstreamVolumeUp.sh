#!/bin/sh

filtered=$(pacmd list-sink-inputs | grep "index\|volume\|wallstream" | tac | grep -A3 "wallstream") 
volume=$(echo $filtered | awk '{print $8}' | cut -f1 -d'%' )
index=$(echo $filtered | awk '{print $20}')

if (( $volume < 100 )); then
    pacmd set-sink-input-volume $index $(( $volume*655+5*655 ))
fi
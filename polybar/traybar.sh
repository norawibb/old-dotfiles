#!/bin/bash

u=$(xprop -name "Polybar tray window" _NET_WM_PID | grep -o '[[:digit:]]*') ;
if [ -n "$u" ]; then
    kill $u
else
    echo "---" | tee -a /tmp/polybar2.log
    polybar --reload tray --config=/home/nonwibb/.config/polybar/config &
fi
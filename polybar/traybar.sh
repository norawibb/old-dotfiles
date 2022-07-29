#!/bin/bash

u=$(xprop -name "Polybar tray window" _NET_WM_PID | grep -o '[[:digit:]]*') ;
if [ -n "$u" ]; then
    kill $u
    polybar-msg action "#arrow.hook.0"
else
    echo "---" | tee -a /tmp/polybar2.log
    polybar-msg action "#arrow.hook.1"
    polybar --reload tray --config=$HOME/.config/polybar/config &
fi
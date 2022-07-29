#!/bin/bash

if [ -n $(xprop -name "Polybar tray window" _NET_WM_PID | grep -o '[[:digit:]]*')  ]; then
    echo "  "
else
    echo "  "
fi
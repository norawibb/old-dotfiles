#!/bin/bash

status=$(expressvpn status | grep "Connected" | sed 's/[^C]*Connected to //g' | sed 's/[^-]*- //' | sed 's/- .*//')

if [[ $status ]]; then
    echo %{F#66FF88}%{u#66FF88}%{+u}"    "%{F#eee}"VPN Connected: "$status
else
    echo %{F#FF7854}%{u#FF7854}%{+u}"    "%{F#eee}"VPN Disconnected"
fi
#!/bin/bash

names=$(xprop -id $(xdotool getwindowfocus) | grep "WM_CLASS(STRING) \=" | sed 's/.*= //')

if [[ $names ]]; then
    notify-send "Class: $names"
fi
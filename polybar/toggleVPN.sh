#!/bin/bash

u=$(expressvpn status | grep "Connected") ;
if [[ "$u" ]]; then
    expressvpn disconnect
else
    expressvpn connect smart
fi
#!/bin/sh



sleep 0.3
if [ -n "$(ps | grep xwinwrap)" ]; then
    killall xwinwrap
else
    streamlink https://www.youtube.com/watch?v=jfKfPfyJRdk best --player="xwinwrap -ov -g 1920x1080+0+0 -- mpv --title="wallstream" -wid WID "$1" --no-osc --no-osd-bar --loop-file --player-operation-mode=cplayer --no-audio --panscan=1.0 --no-keepaspect --no-input-default-bindings --hwdec" &
    streamlink https://www.youtube.com/watch?v=jfKfPfyJRdk best --player="xwinwrap -ov -g 1920x1080+1920+0 -- mpv --title="wallstream" -wid WID "$1" --no-osc --no-osd-bar --loop-file --player-operation-mode=cplayer --panscan=1.0 --no-keepaspect --no-input-default-bindings --hwdec"
fi

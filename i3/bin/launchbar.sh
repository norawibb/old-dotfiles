
killall -q polybar

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload main --config=/home/nonwibb/.config/polybar/config &
  done
else
  polybar --reload main --config=/home/nonwibb/.config/polybar/config &
fi
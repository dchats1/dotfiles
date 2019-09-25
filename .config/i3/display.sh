#!/bin/bash

monitor1=`xrandr | grep ' connected' | grep primary | awk '{print $1}'`
monitor2=`xrandr | grep ' connected' | grep -v primary | awk '{print $1}'`

if ! [ -z "$monitor2" ]; then
  xrandr --output $monitor2 --auto --above $monitor1 
fi

for i in `xrandr | grep disconnected | awk '{print $1}'`; do 
  xrandr --output $i --off
done

feh --bg-scale ~/Pictures/road-background.jpg

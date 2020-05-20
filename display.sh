#!/bin/bash

num_of_monitors=`xrandr | grep ' connected' | wc -l`

if [ "$num_of_monitors" -eq 3 ]; then # Desk layout
  xrandr --output DP2-1 --primary --auto --output DP2-2 --auto --right-of DP2-1 --output eDP1 --off
else # Revert to laptop
  xrandr --output eDP1 --primary --auto
fi

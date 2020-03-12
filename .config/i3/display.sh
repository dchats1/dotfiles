#!/bin/bash

xrandr_output=`xrandr`
num_of_monitors=`echo "$xrandr_output" | grep -E '^eDP.* connected|^DP.* connected' | wc -l`
laptop_screen=`echo "$xrandr_output" | awk '/^eDP/{ print $1 }'`

# Desk layout
if [ "$num_of_monitors" -eq 3 ]; then
  mon1=`echo "$xrandr_output" | awk '/^DP.* connected/{ print $1 }'| head -1`
  mon2=`echo "$xrandr_output" | awk '/^DP.* connected/{ print $1 }'| tail -1`
  xrandr --output $mon1 --primary --auto --output $mon2 --auto --right-of $mon1 --output $laptop_screen --off

# Default to laptop screen
else
  xrandr --output $laptop_screen --primary --auto
fi

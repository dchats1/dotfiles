#!/bin/bash

xrandr_output=`xrandr`
num_of_monitors=`echo "$xrandr_output" | grep ' connected' | wc -l`
laptop_screen=`echo "$xrandr_output" | awk '/^eDP/{ print $1 }'`

if [ "$num_of_monitors" -eq 3 ]; then # Desk layout
  mon1=`echo "$xrandr_output" | awk '/^DP.* connected/{ print $1 }'| head -1`
  mon2=`echo "$xrandr_output" | awk '/^DP.* connected/{ print $1 }'| tail -1`
  xrandr --output $mon1 --primary --auto --output $mon2 --auto --right-of $mon1 --output $laptop_screen --off
  trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 4 --transparent true --alpha 0 --tint 0x000000 --height 16 --monitor 1 &
  xmobar -x 0 ~/.xmonad/xmobarrc-dual &
  xmobar -x 1 ~/.xmonad/xmobarrc &
else # Revert to laptop
  trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 4 --transparent true --alpha 0 --tint 0x000000 --height 16 --monitor 0 &
  xrandr --output $laptop_screen --primary --auto
  xmobar -x 0 ~/.xmonad/xmobarrc &
fi

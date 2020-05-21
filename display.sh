#!/bin/bash

num_of_monitors=`xrandr | grep ' connected' | wc -l`

if [ "$num_of_monitors" -eq 3 ]; then # Desk layout
  xrandr --output DP2-1 --primary --auto --output DP2-2 --auto --right-of DP2-1 --output eDP1 --off
  trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 4 --transparent true --alpha 0 --tint 0x000000 --height 16 --monitor 1 &
  xmobar -x 0 ~/.xmonad/xmobarrc-dual &
  xmobar -x 1 ~/.xmonad/xmobarrc &
else # Revert to laptop
  trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 4 --transparent true --alpha 0 --tint 0x000000 --height 16 --monitor 0 &
  xrandr --output eDP1 --primary --auto
  xmobar -x 0 ~/.xmonad/xmobarrc &
fi

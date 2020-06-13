#!/bin/bash

parcellite &
nm-applet &
slack &
firefox &
feh --bg-scale $HOME/Pictures/wallpaper.png &
bash /home/fr30n/.dwm_bar.sh &

if [ ! -z "$(xrandr | grep "DP1 disconnected")" ]; then
    xrandr --output eDP1 --mode 1920x1080 --scale 1x1 --dpi 70 --rate 60 &
fi

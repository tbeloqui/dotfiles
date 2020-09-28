#!/bin/bash

parcellite &
pnmixer &
nm-applet &
xfce4-volumed &
slack --force-device-scale-factor=1 &
firefox &
feh --bg-scale $HOME/Pictures/wallpaper.png &
bash /home/fr30n/.dwm_bar.sh &
rxvt-unicode -e $HOME/.scripts/tmux.sh &

# if [ ! -z "$(xrandr | grep "DP1 disconnected")" ]; then
    # xrandr --output eDP1 --mode 1920x1080 --scale 1x1 --dpi 192 --rate 60 &
# fi

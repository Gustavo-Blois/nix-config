#!/bin/bash
swww init &
sleep 1
swww img ~/Wallpapers/1
nm-applet --indicator &
waybar &
dunst

#!/bin/bash

# Capture every monitor into 1 screenshot after 1 second
xfce4-screenshooter -f -m -d 1 -c -s  "/home/soders/Pictures/Screenshots/$(date -d "today" +"%Y-%m-%d %I-%M-%S %p").png"

notify-send -i ~/.local/share/icons/Colloid-Purple-Dracula-Dark/devices/16/camera-photo.svg "xfce4-screenshooter" "Screenshot saved."

#!/bin/bash

# Capture active window after 2 seconds
xfce4-screenshooter -w -d 2 -c -s  "/home/soders/Pictures/Screenshots/$(date -d "today" +"%Y-%m-%d %I-%M-%S %p").png"

notify-send -i ~/.local/share/icons/Colloid-Purple-Dracula-Dark/devices/16/camera-photo.svg "xfce4-screenshooter" "Screenshot saved."

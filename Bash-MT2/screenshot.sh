#!/bin/bash

# Capture region
xfce4-screenshooter -r -c -s  "/home/soders/Pictures/Screenshots/$(date -d "today" +"%Y-%m-%d %I-%M-%S %p").png"

notify-send -i ~/.local/share/icons/Colloid-Orange-Dracula-Dark/devices/16/camera-photo.svg "xfce4-screenshooter" "Screenshot saved."

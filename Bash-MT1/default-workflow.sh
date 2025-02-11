#!/bin/bash

source /home/soders/.env

# Wallpapers:

# First monitor
xfconf-query  \
  --channel xfce4-desktop \
  --property /backdrop/screen0/monitorDP-2/workspace0/last-image \
  --set /home/soders/Pictures/Wallpapers/Dracula.png

# Second monitor
xfconf-query  \
  --channel xfce4-desktop \
  --property /backdrop/screen0/monitorDP-4/workspace0/last-image \
  --set /home/soders/Pictures/Wallpapers/Dracula.png

# Third monitor
xfconf-query  \
  --channel xfce4-desktop \
  --property /backdrop/screen0/monitorHDMI-2-2/workspace0/last-image \
  --set /home/soders/Pictures/Wallpapers/Dracula.png

# TV
xfconf-query  \
  --channel xfce4-desktop \
  --property /backdrop/screen0/monitorHDMI-1-0/workspace0/last-image \
  --set /home/soders/Pictures/Wallpapers/Dracula.png

# Laptop:
ssh $MT3 /home/soders/Scripts/default-workflow.sh & ssh $PM2 /home/soders/Scripts/default-workflow.sh

# Screensavers:
cp "/home/soders/Configs/XScreenSaver/Default/.xscreensaver" "/home/soders/"

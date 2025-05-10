#!/bin/bash

source ~/.env

# Wallpapers:

# First monitor
xfconf-query  \
  --channel xfce4-desktop \
  --property /backdrop/screen0/monitorDP-1-2/workspace0/last-image \
  --set /home/soders/Pictures/Wallpapers/Dracula.png

# Second monitor
xfconf-query  \
  --channel xfce4-desktop \
  --property /backdrop/screen0/monitorDP-1-4/workspace0/last-image \
  --set /home/soders/Pictures/Wallpapers/Dracula.png

# Third monitor
xfconf-query  \
  --channel xfce4-desktop \
  --property /backdrop/screen0/monitorHDMI-2/workspace0/last-image \
  --set /home/soders/Pictures/Wallpapers/Dracula.png

# TV
xfconf-query  \
  --channel xfce4-desktop \
  --property /backdrop/screen0/monitorHDMI-2-0/workspace0/last-image \
  --set /home/soders/Pictures/Wallpapers/Dracula.png

# Laptop:
ssh $MT3 ~/Scripts/default-workflow.sh & ssh $PM2 ~/Scripts/default-workflow.sh

# Screensavers:
cp ~/Configs/XScreenSaver/.default ~/.xscreensaver

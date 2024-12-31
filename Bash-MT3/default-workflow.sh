#!/bin/bash

# Wallpapers:

# Laptop
xfconf-query  \
  --channel xfce4-desktop \
  --property /backdrop/screen0/monitorLVDS/workspace0/last-image \
  --set /home/soders/Pictures/Wallpapers/Dracula.png

# TV
xfconf-query  \
  --channel xfce4-desktop \
  --property /backdrop/screen0/monitorHDMI-0/workspace0/last-image \
  --set /home/soders/Pictures/Wallpapers/Dracula.png

# Screensavers:

# Laptop
cp "/home/soders/Configs/XScreenSaver/Default/.xscreensaver" "/home/soders/"

# End programs:
pkill vlc
#!/bin/bash

kill `ps -aux | grep enable-live-wallpaper-1.sh | grep -v grep | awk '{ print $2 }'` > /dev/null 2>&1&
rm /tmp/live-wallpaper/live-wallpaper.lock > /dev/null 2>&1&

source ~/.env

# Wallpapers:

# Laptop
xfconf-query  \
  --channel xfce4-desktop \
  --property /backdrop/screen0/$LVDS/workspace0/last-image \
  --set /home/soders/Pictures/Wallpapers/Dracula.png

# TV
xfconf-query  \
  --channel xfce4-desktop \
  --property /backdrop/screen0/$TV/workspace0/last-image \
  --set /home/soders/Pictures/Wallpapers/Dracula.png

# Screensavers:

# Laptop
cp ~/Configs/XScreenSaver/.default ~/.xscreensaver

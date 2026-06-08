#!/bin/bash

source ~/.env

kill `ps -aux | grep enable-live-wallpaper-1.sh | grep -v grep | awk '{ print $2 }'` > /dev/null 2>&1&
rm /tmp/live-wallpaper/live-wallpaper.lock > /dev/null 2>&1&

# kill `ps -aux | grep enable-live-wallpaper-2.sh | grep -v grep | awk '{ print $2 }'` > /dev/null 2>&1&
# rm /tmp/live-wallpaper/live-wallpaper-2.lock > /dev/null 2>&1&
# rm /tmp/live-wallpaper/frames.txt > /dev/null 2>&1&

# Wallpapers:

# First monitor
xfconf-query  \
  --channel xfce4-desktop \
  --property /backdrop/screen0/$PRIMARY_DISPLAY/workspace0/last-image \
  --set /home/soders/Pictures/Wallpapers/Dracula.png

# Second monitor
xfconf-query  \
  --channel xfce4-desktop \
  --property /backdrop/screen0/$SECONDARY_DISPLAY/workspace0/last-image \
  --set /home/soders/Pictures/Wallpapers/Dracula.png

# Third monitor
xfconf-query  \
  --channel xfce4-desktop \
  --property /backdrop/screen0/$THIRD_DISPLAY/workspace0/last-image \
  --set /home/soders/Pictures/Wallpapers/Dracula.png

# TV
xfconf-query  \
  --channel xfce4-desktop \
  --property /backdrop/screen0/$TV/workspace0/last-image \
  --set /home/soders/Pictures/Wallpapers/Dracula.png

# Screensavers:
cp ~/Configs/XScreenSaver/.default ~/.xscreensaver

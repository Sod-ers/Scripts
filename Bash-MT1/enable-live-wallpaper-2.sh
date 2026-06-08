#!/bin/bash

# ffmpeg -ss 00:00:02 -display_rotation:v:0 90 -i "/home/soders/Videos/Nexus live wallpaper/Nexus live wallpaper.mp4" -t 00:05:00 -vf "crop=1250:725:0:175" out.mp4
# ffmpeg -ss 00:00:02 -i /home/soders/Desktop/test/out.mp4 -t 00:05:00 -vf "scale=1920x1080" enhance.mp4
# ffmpeg -i "/home/soders/Desktop/test/enhance.mp4" -ss 00:00:02 -t 00:05:00 %06d.png
# FOR FULL VERSION
# ffmpeg -ss 00:00:02 -display_rotation:v:0 90 -i "/home/soders/Videos/Nexus live wallpaper/Nexus live wallpaper.mp4" -t 00:19:59 -vf "crop=1250:725:0:175" out.mp4

# prerequisites
source ~/.env
mkdir /tmp/live-wallpaper/ > /dev/null 2>&1&
touch /tmp/live-wallpaper/frames.txt > /dev/null 2>&1&
touch /tmp/live-wallpaper/live-wallpaper-2.lock > /dev/null 2>&1&
echo " " > /tmp/live-wallpaper/frames.txt

# begin loop
while [ -e /tmp/live-wallpaper/live-wallpaper-2.lock ]; do

# check if empty
if [ -s /tmp/live-wallpaper/frames.txt ]; then

# read first line
incremental_wallpaper=$(head -n 1 /tmp/live-wallpaper/frames.txt)

# change wallpaper
xfconf-query  \
  --channel xfce4-desktop \
  --property /backdrop/screen0/$PRIMARY_DISPLAY/workspace0/last-image \
  --set /home/soders/Pictures/Wallpapers/Nexus/$incremental_wallpaper

# remove first line & move up
sed -i 1d /tmp/live-wallpaper/frames.txt

# .03 = 30 fps
sleep .03

else

cd ~/Pictures/Wallpapers/Nexus/
printf '%s\n' * > /tmp/live-wallpaper/frames.txt

fi
done
~/Scripts/enable-live-wallpaper-2.sh

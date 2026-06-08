#!/bin/bash

source ~/Configs/rtsp/.env
source ~/Configs/Redshift/.env
source ~/.env

# Bluetooth
# rfkill unblock bluetooth

# MT1 mpv
DISPLAY=:0 ~/Scripts/launch-mpv.sh > /dev/null 2>&1&

# MT3/PM2 mpv
ssh $MT3 DISPLAY=:0 ~/Scripts/launch-mpv.sh > /dev/null 2>&1&
ssh $PM2 DISPLAY=:0 ~/Scripts/launch-mpv.sh > /dev/null 2>&1&

# Foobar2000
DISPLAY=:0 xdotool mousemove 960 1600
~/Programs/Virtual-Machine-Manager/Foobar2000/open-foobar2000.sh > /dev/null 2>&1&
sleep 1.5
DISPLAY=:0 wmctrl -r "Foobar2000 (1)" -b add,maximized_vert,maximized_horz &

# Cavasik
DISPLAY=:0 xdotool mousemove 4300 1600
time=$(date +%k%M)
if [[ "$time" -ge $NIGHTSHIFT_ENABLED_TIME || "$time" -le $NIGHTSHIFT_DISABLED_TIME ]];then
DISPLAY=:0 /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=cavasik io.github.TheWisker.Cavasik --set-fg /home/soders/Configs/Cavasik/dracula-orange.rgb > /dev/null 2>&1&
else
DISPLAY=:0 /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=cavasik io.github.TheWisker.Cavasik --set-fg /home/soders/Configs/Cavasik/dracula-purple.rgb > /dev/null 2>&1&
fi
sleep 1
DISPLAY=:0 wmctrl -r "Cavasik" -b add,maximized_vert,maximized_horz &

# RTSP mpv
~/Scripts/rtsp-1.sh > /dev/null 2>&1&
until DISPLAY=:0 wmctrl -l | grep -w "$one" || (( t++ >= 15 )); do
sleep 1
done
most_recent_mpv_window=$(DISPLAY=:0 wmctrl -l mpv | sort -r | head -n 1 | cut -d " " -f 1)
DISPLAY=:0 wmctrl -ir $most_recent_mpv_window -e 0,2204,669,657,370

~/Scripts/rtsp-2.sh > /dev/null 2>&1&
until DISPLAY=:0 wmctrl -l | grep -w "$two" || (( t++ >= 15 )); do
sleep 1
done
most_recent_mpv_window=$(DISPLAY=:0 wmctrl -l mpv | sort -r | head -n 1 | cut -d " " -f 1)
DISPLAY=:0 wmctrl -ir $most_recent_mpv_window -e 0,941,670,656,369

# Gmod
DISPLAY=:0 xdotool mousemove 2800 1600
~/Scripts/join-easy-server.sh

#!/bin/bash

source ~/Configs/Redshift/.env
source ~/.env

# rfkill unblock bluetooth

~/Scripts/launch-mpv.sh
sleep 2
# Move up
xdotool key ctrl+shift+Up

ssh $MT3 DISPLAY=:0 ~/Scripts/launch-mpv.sh & ssh $PM2 DISPLAY=:0 ~/Scripts/launch-mpv.sh &
sleep 1

nohup ~/Programs/Virtual-Machine-Manager/Foobar2000/open-foobar2000.sh > /dev/null 2>&1&

sleep 1
# unmaximize
window_ids=$(wmctrl -l | cut -f1 -d " ")
for window_id in $window_ids
do
    wmctrl -i -r "$window_id" -b remove,maximized_vert,maximized_horz
done

sleep 1
# Move left
wmctrl -r ":ACTIVE:" -e 0,0,0,1920,1080

time=$(date +%k%M)
if [[ "$time" -ge $NIGHTSHIFT_ENABLED_TIME || "$time" -le $NIGHTSHIFT_DISABLED_TIME ]];then
/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=cavasik io.github.TheWisker.Cavasik --set-fg /home/soders/Configs/Cavasik/dracula-orange.rgb > /dev/null 2>&1&
sleep 1
# unmaximize
window_ids=$(wmctrl -l | cut -f1 -d " ")
for window_id in $window_ids
do
    wmctrl -i -r "$window_id" -b remove,maximized_vert,maximized_horz
done
sleep 1
# unmaximize
window_ids=$(wmctrl -l | cut -f1 -d " ")
for window_id in $window_ids
do
    wmctrl -i -r "$window_id" -b remove,maximized_vert,maximized_horz
done

sleep 1
# Move right
wmctrl -r ":ACTIVE:" -e 0,3840,0,1920,1080

else
/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=cavasik io.github.TheWisker.Cavasik --set-fg /home/soders/Configs/Cavasik/dracula-purple.rgb > /dev/null 2>&1&
sleep 1
# unmaximize
window_ids=$(wmctrl -l | cut -f1 -d " ")
for window_id in $window_ids
do
    wmctrl -i -r "$window_id" -b remove,maximized_vert,maximized_horz
done
sleep 1
# unmaximize
window_ids=$(wmctrl -l | cut -f1 -d " ")
for window_id in $window_ids
do
    wmctrl -i -r "$window_id" -b remove,maximized_vert,maximized_horz
done

sleep 1
# Move right
wmctrl -r ":ACTIVE:" -e 0,3840,0,1920,1080
fi

sleep 1
# Maximize
window_ids=$(wmctrl -l | cut -f1 -d " ")
for window_id in $window_ids
do
    wmctrl -i -r "$window_id" -b add,maximized_vert,maximized_horz
done

sleep 1

~/Scripts/join-easy-server.sh

exit

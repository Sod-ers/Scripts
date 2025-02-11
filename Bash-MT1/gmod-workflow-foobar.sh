#!/bin/bash

source /home/soders/.env

rfkill unblock bluetooth

nohup /home/soders/Programs/Virtual-Machine-Manager/Foobar2000/open-foobar2000.sh > /dev/null 2>&1&

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
/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=/app/bin/org.nickvision.cavalier org.nickvision.cavalier > /dev/null 2>&1&
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
/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=cavasik io.github.TheWisker.Cavasik > /dev/null 2>&1&
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

/home/soders/Scripts/join-easy-server.sh

exit

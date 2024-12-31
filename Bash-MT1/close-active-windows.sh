#!/bin/bash

source /home/soders/.env

virsh shutdown Foobar2000 > /dev/null 2>&1&
virsh shutdown Debian > /dev/null 2>&1&
virsh shutdown MintXFCE > /dev/null 2>&1&
virsh shutdown SDK > /dev/null 2>&1&
virsh shutdown Sideloadly > /dev/null 2>&1&
virsh shutdown Windows11-Offline > /dev/null 2>&1&
virsh shutdown Windows11-Online > /dev/null 2>&1&
/home/soders/Scripts/default-workflow.sh > /dev/null 2>&1&

WIN_IDs=$(wmctrl -l | grep -vwE "Desktop$|xfce4-panel$|Whisker Menu$|Factorio: Space Age 2.0.28$" | cut -f1 -d' ')
for i in $WIN_IDs; do wmctrl -ic "$i"; done

while [ $WIN_IDs ]; do
    sleep 0.1;
    WIN_IDs=$(wmctrl -l | grep -vwE "Desktop$|xfce4-panel$|Whisker Menu$|Factorio: Space Age 2.0.28$" | cut -f1 -d' ')
done

sshpass -p $SSH_PASSWORD ssh $MT3 pkill xscreensaver & sshpass -p $SSH_PASSWORD ssh $PM2 pkill xscreensaver
# sleep 0.25
sshpass -p $SSH_PASSWORD ssh $MT3 xscreensaver -nosplash & sshpass -p $SSH_PASSWORD ssh $PM2 xscreensaver -nosplash

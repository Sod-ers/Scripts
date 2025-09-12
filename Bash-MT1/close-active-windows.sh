#!/bin/bash

source ~/.env

virsh shutdown Foobar2000 > /dev/null 2>&1&
virsh shutdown Debian > /dev/null 2>&1&
virsh shutdown MintXFCE > /dev/null 2>&1&
virsh shutdown SDK > /dev/null 2>&1&
virsh shutdown Sideloadly > /dev/null 2>&1&
virsh shutdown Windows11-Offline > /dev/null 2>&1&
virsh shutdown Windows11-Online > /dev/null 2>&1&
~/Scripts/default-workflow.sh > /dev/null 2>&1&

WIN_IDs=$(wmctrl -l | grep -vwE "Desktop$|xfce4-panel$|Whisker Menu$|Factorio: Space Age 2.*$" | cut -f1 -d' ')
for i in $WIN_IDs; do wmctrl -ic "$i"; done

while [ $WIN_IDs ]; do
    sleep 0.1;
    WIN_IDs=$(wmctrl -l | grep -vwE "Desktop$|xfce4-panel$|Whisker Menu$|Factorio: Space Age 2.*$" | cut -f1 -d' ')
done

ssh $MT3 pkill vlc & ssh $PM2 pkill vlc
ssh $MT3 pkill xscreensaver & ssh $PM2 pkill xscreensaver
ssh $MT3 xscreensaver -nosplash & ssh $PM2 xscreensaver -nosplash

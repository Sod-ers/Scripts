#!/bin/bash

source ~/.env
LIBVIRT_DEFAULT_URI=qemu:///system virsh shutdown Foobar2000 > /dev/null 2>&1&
# LIBVIRT_DEFAULT_URI=qemu:///system virsh shutdown Debian > /dev/null 2>&1&
# LIBVIRT_DEFAULT_URI=qemu:///system virsh shutdown MintXFCE > /dev/null 2>&1&
# LIBVIRT_DEFAULT_URI=qemu:///system virsh shutdown SDK > /dev/null 2>&1&
LIBVIRT_DEFAULT_URI=qemu:///system virsh shutdown Sideloadly > /dev/null 2>&1&
# LIBVIRT_DEFAULT_URI=qemu:///system virsh shutdown Windows11-Offline > /dev/null 2>&1&
# LIBVIRT_DEFAULT_URI=qemu:///system virsh shutdown Windows11-Online > /dev/null 2>&1&
~/Scripts/default-workflow.sh > /dev/null 2>&1&

WIN_IDs=$(DISPLAY=:0 wmctrl -l | grep -vwE "Desktop$|xfce4-panel$|Whisker Menu$|Factorio: Space Age 2.*$" | cut -f1 -d' ')
for i in $WIN_IDs; do DISPLAY=:0 wmctrl -ic "$i"; done

while [ $WIN_IDs ]; do
    sleep 0.1;
    WIN_IDs=$(DISPLAY=:0 wmctrl -l | grep -vwE "Desktop$|xfce4-panel$|Whisker Menu$|Factorio: Space Age 2.*$" | cut -f1 -d' ')
done

ssh $MT3 pkill mpv > /dev/null 2>&1&
ssh $PM2 pkill mpv > /dev/null 2>&1&
ssh $MT3 pkill feh > /dev/null 2>&1&
ssh $PM2 pkill feh > /dev/null 2>&1&
# ssh $MT3 pkill xscreensaver & ssh $PM2 pkill xscreensaver
# ssh $MT3 xscreensaver -nosplash & ssh $PM2 xscreensaver -nosplash

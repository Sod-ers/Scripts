#!/bin/bash

if pgrep -x "obs" > /dev/null
then
~/Scripts/enable-switch-audios-for-obs.sh
obs-cmd recording stop
obs-cmd replay toggle
sleep 1
pkill obs
else
/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=obs com.obsproject.Studio --collection Primary-Display --profile Primary-Display --startrecording --startreplaybuffer --minimize-to-tray --disable-shutdown-check

~/Scripts/disable-switch-audios-for-obs.sh
fi

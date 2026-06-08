#!/bin/bash

if pgrep -x "obs" > /dev/null
then
obs-cmd recording stop
obs-cmd replay toggle
sleep 1
pkill obs
else
/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=obs com.obsproject.Studio --collection Secondary-Display --profile Secondary-Display --startrecording --startreplaybuffer --minimize-to-tray --disable-shutdown-check
fi

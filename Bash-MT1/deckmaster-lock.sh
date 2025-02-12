#!/bin/bash

source ~/.env

nohup /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=openrgb org.openrgb.OpenRGB --profile Off > /dev/null 2>&1&
kill $(pidof deckmaster)
sleep 0.25
~/Scripts/deckmaster-unlock-decider.sh
ssh $MT3 ~/Scripts/lock.sh & ssh $PM2 ~/Scripts/lock.sh
exit
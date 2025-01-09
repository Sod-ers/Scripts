#!/bin/bash

source /home/soders/.env

nohup /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=openrgb org.openrgb.OpenRGB --profile Off > /dev/null 2>&1&
kill $(pidof deckmaster)
sleep 0.25
/home/soders/Scripts/deckmaster-unlock-decider.sh
sshpass -p $SSH_PASSWORD ssh $MT3 /home/soders/Scripts/lock.sh & sshpass -p $SSH_PASSWORD ssh $PM2 /home/soders/Scripts/lock.sh
exit

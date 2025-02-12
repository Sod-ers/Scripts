#!/bin/bash

xdotool key Super_L+u
~/Scripts/default-workflow.sh
xscreensaver-command -activate
sleep 1
ssh $MT3 ~/Scripts/lock.sh & ssh $PM2 ~/Scripts/lock.sh
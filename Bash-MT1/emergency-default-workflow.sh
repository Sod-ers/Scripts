#!/bin/bash

xdotool key Super_L+u
/home/soders/Scripts/default-workflow.sh
xscreensaver-command -activate
sleep 1
sshpass -p $SSH_PASSWORD ssh $MT3 /home/soders/Scripts/lock.sh & sshpass -p $SSH_PASSWORD ssh $PM2 /home/soders/Scripts/lock.sh

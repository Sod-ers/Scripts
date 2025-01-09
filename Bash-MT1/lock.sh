#!/bin/bash

source /home/soders/.env

sshpass -p $SSH_PASSWORD ssh $MT2 "echo 1 > /tmp/lock-status-mt2.txt"

# XScreensaver PC
xscreensaver-command -activate

# XScreensaver Laptops
sshpass -p $SSH_PASSWORD ssh $MT3 /home/soders/Scripts/lock.sh & sshpass -p $SSH_PASSWORD ssh $PM2 /home/soders/Scripts/lock.sh

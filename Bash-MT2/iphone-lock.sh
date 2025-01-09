#!/bin/bash

source /home/soders/.env

echo "1" > /tmp/lock-status-mt2.txt

# XScreensaver PC
sshpass -p $SSH_PASSWORD ssh $MT1 xscreensaver-command -activate > /dev/null 2>&1&
sshpass -p $SSH_PASSWORD ssh $PM xscreensaver-command -activate > /dev/null 2>&1&

# XScreensaver Laptops
sshpass -p $SSH_PASSWORD ssh $MT3 /home/soders/Scripts/lock.sh > /dev/null 2>&1&
sshpass -p $SSH_PASSWORD ssh $PM2 /home/soders/Scripts/lock.sh > /dev/null 2>&1&

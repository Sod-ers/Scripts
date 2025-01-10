#!/bin/bash

source /home/soders/.env

/home/soders/Scripts/iphone-unlock.sh
sleep 1
echo "1" > /tmp/lock-status-mt2.txt
sshpass -p $SSH_PASSWORD ssh $MT1 /home/soders/Scripts/default-workflow.sh > /dev/null 2>&1&
sshpass -p $SSH_PASSWORD ssh $PM /home/soders/Scripts/default-workflow.sh > /dev/null 2>&1&
sleep 4
sshpass -p $SSH_PASSWORD ssh $MT1 xscreensaver-command -activate > /dev/null 2>&1&
sshpass -p $SSH_PASSWORD ssh $PM xscreensaver-command -activate > /dev/null 2>&1&
sleep 0.50
sshpass -p $SSH_PASSWORD ssh $MT3 /home/soders/Scripts/lock.sh > /dev/null 2>&1&
sshpass -p $SSH_PASSWORD ssh $PM2 /home/soders/Scripts/lock.sh > /dev/null 2>&1&

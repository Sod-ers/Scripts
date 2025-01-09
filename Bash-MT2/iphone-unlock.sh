#!/bin/bash

source /home/soders/.env

echo "0" > /tmp/lock-status-mt2.txt

sshpass -p $SSH_PASSWORD ssh $MT1 pkill xscreensaver > /dev/null 2>&1&
sshpass -p $SSH_PASSWORD ssh $PM pkill xscreensaver > /dev/null 2>&1&

# Laptops
nohup sshpass -p $SSH_PASSWORD ssh $MT3 pkill xscreensaver > /dev/null 2>&1&
nohup sshpass -p $SSH_PASSWORD ssh $PM2 pkill xscreensaver > /dev/null 2>&1&
sleep 1
nohup sshpass -p $SSH_PASSWORD ssh $MT3 xscreensaver -nosplash > /dev/null 2>&1&
nohup sshpass -p $SSH_PASSWORD ssh $PM2 xscreensaver -nosplash > /dev/null 2>&1&

sleep 0.25
sshpass -p $SSH_PASSWORD ssh $MT1 /home/soders/.local/bin/xscreensaver-restart.sh &>/dev/null &
sshpass -p $SSH_PASSWORD ssh $PM /home/soders/.local/bin/xscreensaver-restart.sh &>/dev/null &
sshpass -p $SSH_PASSWORD ssh $MT1 /home/soders/Scripts/deckmaster-shift-decider.sh &>/dev/null &
sshpass -p $SSH_PASSWORD ssh $PM /home/soders/Scripts/deckmaster-shift-decider.sh &>/dev/null &

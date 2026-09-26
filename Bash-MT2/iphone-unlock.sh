#!/bin/bash

source ~/.env

echo "0" > /tmp/lock-status-mt2.txt

ssh $MT6 pkill xscreensaver > /dev/null 2>&1&
ssh $MT1 pkill xscreensaver > /dev/null 2>&1&
ssh $PM pkill xscreensaver > /dev/null 2>&1&

# Laptops
nohup ssh $MT3 pkill xscreensaver > /dev/null 2>&1&
nohup ssh $PM2 pkill xscreensaver > /dev/null 2>&1&
sleep 1
nohup ssh $MT3 xscreensaver -nosplash > /dev/null 2>&1&
nohup ssh $PM2 xscreensaver -nosplash > /dev/null 2>&1&

sleep 0.25
ssh $MT1 ~/Scripts/xscreensaver-restart.sh &>/dev/null &
ssh $PM ~/Scripts/xscreensaver-restart.sh &>/dev/null &
ssh $MT1 ~/Scripts/deckmaster-shift-decider.sh &>/dev/null &
ssh $PM ~/Scripts/deckmaster-shift-decider.sh &>/dev/null &

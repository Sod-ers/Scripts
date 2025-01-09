#!/bin/bash

source /home/soders/.env

sshpass -p $SSH_PASSWORD ssh $MT2 "echo 0 > /tmp/lock-status-mt2.txt"

/home/soders/Scripts/shift-decider-xscreensaver.sh

# Laptops
sshpass -p $SSH_PASSWORD ssh $MT3 pkill xscreensaver & sshpass -p $SSH_PASSWORD ssh $PM2 pkill xscreensaver
sshpass -p $SSH_PASSWORD ssh $MT3 xscreensaver -nosplash & sshpass -p $SSH_PASSWORD ssh $PM2 xscreensaver -nosplash

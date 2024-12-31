#!/bin/bash

source /home/soders/.env

/home/soders/Scripts/shift-decider-xscreensaver.sh

# Laptops
sshpass -p $SSH_PASSWORD ssh $MT3 pkill xscreensaver & sshpass -p $SSH_PASSWORD ssh $PM2 pkill xscreensaver
sshpass -p $SSH_PASSWORD ssh $MT3 xscreensaver -nosplash & sshpass -p $SSH_PASSWORD ssh $PM2 xscreensaver -nosplash

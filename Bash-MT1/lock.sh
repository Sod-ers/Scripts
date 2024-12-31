#!/bin/bash

source /home/soders/.env

# XScreensaver PC
xscreensaver-command -activate

# XScreensaver Laptops
sshpass -p $SSH_PASSWORD ssh $MT3 /home/soders/Scripts/lock.sh & sshpass -p $SSH_PASSWORD ssh $PM2 /home/soders/Scripts/lock.sh
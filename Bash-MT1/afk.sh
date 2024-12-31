#!/bin/bash
1
source /home/soders/.env

# Change workflow
/home/soders/Scripts/default-workflow.sh

# Suspend laptop
sshpass -p $SSH_PASSWORD ssh $MT3 xfce4-session-logout --suspend & sshpass -p $SSH_PASSWORD ssh $PM2 xfce4-session-logout --suspend

# Screensaver
xscreensaver-command -activate

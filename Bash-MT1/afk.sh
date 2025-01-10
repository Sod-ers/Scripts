#!/bin/bash

source /home/soders/.env

sshpass -p $SSH_PASSWORD ssh $MT2 "echo 1 > /tmp/lock-status-mt2.txt"

# Change workflow
/home/soders/Scripts/default-workflow.sh

# Suspend laptop
sshpass -p $SSH_PASSWORD ssh $MT3 xfce4-session-logout --suspend & sshpass -p $SSH_PASSWORD ssh $PM2 xfce4-session-logout --suspend & xscreensaver-command -activate

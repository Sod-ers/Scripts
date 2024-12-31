#!/bin/bash

source /home/soders/.env

# Shutdown laptop & secondary PC immediately
sshpass -p $SSH_PASSWORD ssh $MT3 xfce4-session-logout --halt
sshpass -p $SSH_PASSWORD ssh $PM2 xfce4-session-logout --halt
sshpass -p $SSH_PASSWORD ssh $MT2 xfce4-session-logout --halt

sleep 3

# Shutdown this PC immediately
xfce4-session-logout --halt

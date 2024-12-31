#!/bin/bash

source /home/soders/.env

# Shutdown laptop & secondary PC immediately
sshpass -p $SSH_PASSWORD ssh $MT3 xfce4-session-logout --halt > /dev/null 2>&1&
sshpass -p $SSH_PASSWORD ssh $PM2 xfce4-session-logout --halt > /dev/null 2>&1&
sshpass -p $SSH_PASSWORD ssh $MT1 xfce4-session-logout --halt > /dev/null 2>&1&
sshpass -p $SSH_PASSWORD ssh $PM xfce4-session-logout --halt > /dev/null 2>&1&

sleep 3

# Shutdown this PC immediately
xfce4-session-logout --halt > /dev/null 2>&1&

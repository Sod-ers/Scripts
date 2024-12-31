#!/bin/bash

source /home/soders/.env

# Shutdown PC & secondary PC immediately
sshpass -p $SSH_PASSWORD ssh $MT1 xfce4-session-logout --halt
sshpass -p $SSH_PASSWORD ssh $PM xfce4-session-logout --halt
shpass -p $SSH_PASSWORD ssh $MT2 xfce4-session-logout --halt

sleep 3

# Shutdown this PC immediately
xfce4-session-logout --halt

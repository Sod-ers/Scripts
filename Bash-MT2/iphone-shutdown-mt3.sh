#!/bin/bash

source /home/soders/.env

sshpass -p $SSH_PASSWORD ssh $MT3 xfce4-session-logout --halt > /dev/null 2>&1&
sshpass -p $SSH_PASSWORD ssh $PM2 xfce4-session-logout --halt > /dev/null 2>&1&

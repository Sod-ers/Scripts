#!/bin/bash

source /home/soders/.env

# Shutdown laptop & secondary PC
sshpass -p $SSH_PASSWORD ssh -t $MT3 sudo shutdown +60
sshpass -p $SSH_PASSWORD ssh -t $PM2 sudo shutdown +60
sshpass -p $SSH_PASSWORD ssh -t $MT2 sudo shutdown +60

# Shutdown this PC
nohup kshutdown --hide-ui --shutdown 60 & kill $(pidof xfce4-terminal)

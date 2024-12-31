#!/bin/bash

source /home/soders/.env

# Shutdown PC & secondary PC
sshpass -p $SSH_PASSWORD ssh -t $MT1 sudo shutdown +180
sshpass -p $SSH_PASSWORD ssh -t $PM sudo shutdown +180
sshpass -p $SSH_PASSWORD ssh -t $MT2 sudo shutdown +180

# Shutdown this PC
nohup kshutdown --hide-ui --shutdown 180 & kill $(pidof xfce4-terminal)

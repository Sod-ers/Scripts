#!/bin/bash

source ~/.env

# Shutdown laptop & secondary PC
ssh -t $MT3 sudo shutdown +180
ssh -t $PM2 sudo shutdown +180
ssh -t $MT2 sudo shutdown +180

# Shutdown this PC
nohup kshutdown --hide-ui --shutdown 180 & kill $(pidof xfce4-terminal)

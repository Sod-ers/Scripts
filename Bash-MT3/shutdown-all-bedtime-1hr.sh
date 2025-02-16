#!/bin/bash

source ~/.env

# Shutdown laptop & secondary PC
ssh -t $MT1 sudo shutdown +60
ssh -t $PM sudo shutdown +60
ssh -t $MT2 sudo shutdown +60

# Shutdown this PC
nohup kshutdown --hide-ui --shutdown 60 & kill $(pidof xfce4-terminal)

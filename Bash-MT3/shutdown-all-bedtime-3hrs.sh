#!/bin/bash

source ~/.env

# Shutdown PC & secondary PC
ssh -t $MT1 sudo shutdown +180
ssh -t $PM sudo shutdown +180
ssh -t $MT2 sudo shutdown +180

# Shutdown this PC
nohup kshutdown --hide-ui --shutdown 180 & kill $(pidof xfce4-terminal)

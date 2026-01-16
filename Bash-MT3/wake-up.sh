#!/bin/bash

source ~/.env

pkill kshutdown

ssh $MT2 ~/Scripts/mute-white-noise.sh

nohup pkill xscreensaver > /dev/null 2>&1&
sleep 1
nohup xscreensaver -nosplash > /dev/null 2>&1&

brightnessctl --quiet --device=radeon_bl0 set 100%

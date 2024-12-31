#!/bin/bash

source /home/soders/.env

time=$(date +%k%M)
if [[ "$time" -ge $NIGHTSHIFT_ENABLED_TIME || "$time" -le $NIGHTSHIFT_DISABLED_TIME ]];then
/home/soders/Scripts/enable-night-shift.sh & exit
else
/home/soders/Scripts/disable-night-shift.sh & exit
fi

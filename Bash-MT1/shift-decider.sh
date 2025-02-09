#!/bin/bash

source /home/soders/.env
time=$(date +%k%M)
if [[ "$time" -ge $NIGHTSHIFT_ENABLED_TIME || "$time" -le $NIGHTSHIFT_DISABLED_TIME ]];then
/home/soders/Scripts/enable-night-shift.sh
else
/home/soders/Scripts/start-disabled-night-shift.sh
fi

#!/bin/bash

source ~/.env
source ~/Configs/Redshift/.env

time=$(date +%k%M)
if [[ "$time" -ge $NIGHTSHIFT_ENABLED_TIME || "$time" -le $NIGHTSHIFT_DISABLED_TIME ]];then
~/Scripts/enable-night-shift.sh
else
~/Scripts/start-disabled-night-shift.sh
fi

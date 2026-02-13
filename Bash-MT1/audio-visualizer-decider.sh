#!/bin/bash

source ~/.env
source ~/Configs/Redshift/.env

time=$(date +%k%M)
if [[ "$time" -ge $NIGHTSHIFT_ENABLED_TIME || "$time" -le $NIGHTSHIFT_DISABLED_TIME ]];then
/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=cavasik io.github.TheWisker.Cavasik --set-fg /home/soders/Configs/Cavasik/dracula-orange.rgb > /dev/null 2>&1&
else
/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=cavasik io.github.TheWisker.Cavasik --set-fg /home/soders/Configs/Cavasik/dracula-purple.rgb > /dev/null 2>&1&
fi

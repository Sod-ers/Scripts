#!/bin/bash

source /home/soders/.env

time=$(date +%k%M)
if [[ "$time" -ge $NIGHTSHIFT_ENABLED_TIME || "$time" -le $NIGHTSHIFT_DISABLED_TIME ]];then
/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=/app/bin/org.nickvision.cavalier org.nickvision.cavalier > /dev/null 2>&1&
else
/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=cavasik io.github.TheWisker.Cavasik > /dev/null 2>&1&
fi
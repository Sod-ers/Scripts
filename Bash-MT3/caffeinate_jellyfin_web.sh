#!/bin/bash

sleep 30

pkill xscreensaver > /dev/null 2>&1&

mkdir /tmp/caffeine/ > /dev/null 2>&1&
bash -c "touch /tmp/caffeine/jellyfin-web.lock"
touch /tmp/caffeine/timeout.txt > /dev/null 2>&1&

echo 300 > /tmp/caffeine/timeout.txt

while [ -e /tmp/caffeine/jellyfin-web.lock ]; do
timeout=$(cat /tmp/caffeine/timeout.txt)

if pgrep -f "firefox" > /dev/null
then
echo "running  do nothing" > /dev/null 2>&1&
else
rm /tmp/caffeine/jellyfin-web.lock > /dev/null 2>&1&
fi

sleep $timeout

done

xscreensaver -nosplash > /dev/null 2>&1&

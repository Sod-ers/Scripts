#!/bin/bash

rm /tmp/live-wallpaper/live-wallpaper.lock > /dev/null 2>&1&
kill `ps -aux | grep enable-live-wallpaper-1.sh | grep -v grep | awk '{ print $2 }'` > /dev/null 2>&1&

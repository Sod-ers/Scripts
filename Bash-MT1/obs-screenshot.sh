#!/bin/bash

if pgrep -x "obs" > /dev/null
then
obs-cmd save-screenshot --width 1920 --height 1080 --compression-quality 0 Video jpg "/home/soders/Pictures/Screenshots/$(date -d "today" +"%Y-%m-%d %I-%M-%S %p").png"
else
echo " "
fi
#!/bin/bash

if pgrep -x "obs" > /dev/null
then
obs-cmd recording stop
obs-cmd replay toggle
sleep 1
pkill obs
else
echo " "
fi
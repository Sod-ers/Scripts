#!/bin/bash

if pgrep -x "xscreensaver" > /dev/null
then
echo " "
else
xscreensaver -nosplash
fi
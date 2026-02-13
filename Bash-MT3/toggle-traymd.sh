#!/bin/bash

# https://askubuntu.com/questions/552788/how-do-i-use-wmctrl-to-detect-if-a-window-is-present

if test $(wmctrl -l | grep "traymd" 2>&1 | wc -l) -eq 1; then
wmctrl -c "traymd"
else
traymd
fi

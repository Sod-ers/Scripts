#!/bin/bash

WIN_IDs=$(wmctrl -l | grep -vwE "Desktop$|xfce4-panel$|Whisker Menu$" | cut -f1 -d' ')
for i in $WIN_IDs; do wmctrl -ic "$i"; done

while [ $WIN_IDs ]; do
    sleep 0.1;
    WIN_IDs=$(wmctrl -l | grep -vwE "Desktop$|xfce4-panel$|Whisker Menu$" | cut -f1 -d' ')
done
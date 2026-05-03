#!/bin/bash

is_monitor_connected=$(hwinfo --monitor | grep S200HQL | tr -d ' \n\r\t ' | head -c1 | wc -c)

if [[ $is_monitor_connected -ne 0 ]]; then
# yes
~/Scripts/enable-tv.sh
else
# no
clear
fi

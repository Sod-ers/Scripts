#!/bin/bash

source ~/.env

echo "1" > /tmp/lock-status-mt2.txt

# XScreensaver PC
ssh $MT1 xscreensaver-command -activate > /dev/null 2>&1&
ssh $PM xscreensaver-command -activate > /dev/null 2>&1&

# XScreensaver Laptops
ssh $MT3 ~/Scripts/lock.sh > /dev/null 2>&1&
ssh $PM2 ~/Scripts/lock.sh > /dev/null 2>&1&

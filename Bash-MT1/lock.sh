#!/bin/bash

source ~/.env

ssh $MT2 "echo 1 > /tmp/lock-status-mt2.txt"

# XScreensaver PC
xscreensaver-command -activate

# XScreensaver Laptops
ssh $MT3 ~/Scripts/lock.sh & ssh $PM2 ~/Scripts/lock.sh
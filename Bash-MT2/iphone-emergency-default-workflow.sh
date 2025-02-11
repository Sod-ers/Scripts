#!/bin/bash

source ~/.env

~/Scripts/iphone-unlock.sh
sleep 1
echo "1" > /tmp/lock-status-mt2.txt
ssh $MT1 ~/Scripts/default-workflow.sh > /dev/null 2>&1&
ssh $PM ~/Scripts/default-workflow.sh > /dev/null 2>&1&
sleep 4
ssh $MT1 xscreensaver-command -activate > /dev/null 2>&1&
ssh $PM xscreensaver-command -activate > /dev/null 2>&1&
sleep 0.50
ssh $MT3 ~/Scripts/lock.sh > /dev/null 2>&1&
ssh $PM2 ~/Scripts/lock.sh > /dev/null 2>&1&

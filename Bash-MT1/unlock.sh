#!/bin/bash

source ~/.env

ssh $MT2 "echo 0 > /tmp/lock-status-mt2.txt"

~/Scripts/shift-decider-xscreensaver.sh

# Laptops
ssh $MT3 pkill xscreensaver & ssh $PM2 pkill xscreensaver
ssh $MT3 xscreensaver -nosplash & ssh $PM2 xscreensaver -nosplash

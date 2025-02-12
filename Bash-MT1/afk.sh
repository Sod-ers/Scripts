#!/bin/bash

source ~/.env

ssh $MT2 "echo 1 > /tmp/lock-status-mt2.txt"

# Change workflow
~/Scripts/default-workflow.sh

# Suspend laptop
ssh $MT3 xfce4-session-logout --suspend & ssh $PM2 xfce4-session-logout --suspend & xscreensaver-command -activate
#!/bin/bash

source ~/.env

# Shutdown laptop & secondary PC immediately
ssh $MT3 xfce4-session-logout --halt > /dev/null 2>&1&
ssh $PM2 xfce4-session-logout --halt > /dev/null 2>&1&
ssh $MT1 xfce4-session-logout --halt > /dev/null 2>&1&
ssh $PM xfce4-session-logout --halt > /dev/null 2>&1&

sleep 3

# Shutdown this PC immediately
xfce4-session-logout --halt > /dev/null 2>&1&

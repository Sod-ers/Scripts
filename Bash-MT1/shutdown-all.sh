#!/bin/bash

source ~/.env

# Shutdown laptop & secondary PC immediately
ssh $MT3 xfce4-session-logout --halt & ssh $PM2 xfce4-session-logout --halt & ssh $MT2 xfce4-session-logout --halt

sleep 3

# Shutdown this PC immediately
xfce4-session-logout --halt

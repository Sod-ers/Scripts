#!/bin/bash

source ~/.env

ssh $MT3 xfce4-session-logout --halt > /dev/null 2>&1&
ssh $PM2 xfce4-session-logout --halt > /dev/null 2>&1&
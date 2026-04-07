#!/bin/bash

source ~/.env

nohup ssh $MT3 xfce4-session-logout --suspend > /dev/null 2>&1&
nohup ssh $PM2 xfce4-session-logout --suspend > /dev/null 2>&1&

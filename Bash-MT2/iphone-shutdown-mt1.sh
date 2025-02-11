#!/bin/bash

source ~/.env

ssh $MT1 xfce4-session-logout --halt > /dev/null 2>&1&
ssh $PM xfce4-session-logout --halt > /dev/null 2>&1&
#!/bin/bash

source ~/.env

ssh $MT1 xfce4-session-logout --halt & ssh $PM xfce4-session-logout --halt & ssh $MT2 xfce4-session-logout --halt

sleep 3

xfce4-session-logout --halt
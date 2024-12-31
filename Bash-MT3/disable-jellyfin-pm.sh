#!/bin/bash

source /home/soders/.env

sshpass -p $SSH_PASSWORD ssh $PM /home/soders/Scripts/disable-jellyfin-pm.sh
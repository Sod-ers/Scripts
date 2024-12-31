#!/bin/bash

source /home/soders/.env

sshpass -p $SSH_PASSWORD ssh $MT1 /home/soders/Scripts/enable-jellyfin-mt1.sh
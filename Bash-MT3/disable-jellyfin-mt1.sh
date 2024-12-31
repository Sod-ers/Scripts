#!/bin/bash

source /home/soders/.env

sshpass -p $SSH_PASSWORD ssh $MT1 /home/soders/Scripts/disable-jellyfin-mt1.sh
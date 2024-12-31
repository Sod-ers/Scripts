#!/bin/bash

source /home/soders/.env

sshpass -p $SSH_PASSWORD ssh $MT1 /home/soders/Scripts/enable-tdarr-mt1.sh
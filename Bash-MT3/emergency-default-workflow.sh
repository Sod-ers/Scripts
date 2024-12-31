#!/bin/bash

source /home/soders/.env

/home/soders/Scripts/default-workflow.sh
sshpass -p $SSH_PASSWORD ssh $MT1 /home/soders/Scripts/default-workflow-for-mt3.sh & sshpass -p $SSH_PASSWORD ssh $PM /home/soders/Scripts/default-workflow-for-mt3.sh

sshpass -p $SSH_PASSWORD ssh $MT1 /home/soders/Scripts/lock.sh & sshpass -p $SSH_PASSWORD ssh $PM /home/soders/Scripts/lock.sh

xscreensaver-command -activate

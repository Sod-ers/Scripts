#!/bin/bash

source /home/soders/.env

sshpass -p $SSH_PASSWORD scp /home/soders/Nextcloud/Notes/Notes/Urgent.md $MT2:/home/soders/Documents/Notes/Urgent.md
sshpass -p $SSH_PASSWORD ssh $MT2 /home/soders/Scripts/urgent-tasks.sh

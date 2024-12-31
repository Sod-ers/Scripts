#!/bin/bash

source /home/soders/.env

sshpass -p $SSH_PASSWORD scp /home/soders/Nextcloud/Notes/Notes/Print.md $MT2:/home/soders/Documents/Notes/Print.md
sshpass -p $SSH_PASSWORD ssh $MT2 /home/soders/Scripts/thermal-print.sh
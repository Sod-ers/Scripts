#!/bin/bash

source /home/soders/.env

sshpass -p $SSH_PASSWORD scp /home/soders/Nextcloud/Notes/Notes/Groceries.md $MT2:/home/soders/Documents/Notes/Groceries.md
sshpass -p $SSH_PASSWORD ssh $MT2 /home/soders/Scripts/groceries.sh
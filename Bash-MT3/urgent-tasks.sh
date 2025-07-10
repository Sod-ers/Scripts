#!/bin/bash

source ~/.env

scp ~/Nextcloud/Notes/Notes/Urgent.md $MT2:~/Documents/Notes/Urgent.md
ssh $MT2 ~/Scripts/urgent-tasks.sh
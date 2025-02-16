#!/bin/bash

source ~/.env

ssh $MT2 mkdir /tmp/thermal-print/

scp ~/Nextcloud/Notes/Notes/Urgent.md $MT2:/tmp/thermal-print/urgent.md
ssh $MT2 ~/Scripts/urgent-tasks.sh

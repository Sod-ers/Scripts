#!/bin/bash

source ~/.env

scp ~/Nextcloud/Notes/Notes/Print.md $MT2:~/Documents/Notes/Print.md
ssh $MT2 ~/Scripts/thermal-print.sh
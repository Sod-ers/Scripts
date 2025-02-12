#!/bin/bash

source ~/.env

scp ~/Nextcloud/Notes/Notes/Groceries.md $MT2:~/Documents/Notes/Groceries.md
ssh $MT2 ~/Scripts/groceries.sh
#!/bin/bash

source ~/.env

ssh $MT2 mkdir /tmp/thermal-print/

scp ~/Nextcloud/Notes/Notes/Groceries.md $MT2:/tmp/thermal-print/groceries.md
ssh $MT2 ~/Scripts/groceries.sh

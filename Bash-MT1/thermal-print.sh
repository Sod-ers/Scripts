#!/bin/bash

source ~/.env

ssh $MT2 mkdir /tmp/thermal-print/

scp ~/Nextcloud/Notes/Notes/Print.md $MT2:/tmp/thermal-print/print.md
ssh $MT2 ~/Scripts/thermal-print.sh

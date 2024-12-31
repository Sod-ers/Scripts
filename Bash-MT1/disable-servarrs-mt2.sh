#!/bin/bash

source /home/soders/.env

sshpass -p $SSH_PASSWORD ssh -t $MT2 /home/soders/Scripts/disable-servarrs-mt2.sh

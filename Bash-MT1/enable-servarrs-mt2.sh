#!/bin/bash

source /home/soders/.env

sshpass -p $SSH_PASSWORD ssh -t $MT2 /home/soders/Scripts/enable-servarrs-mt2.sh

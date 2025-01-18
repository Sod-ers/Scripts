#!/bin/bash

source /home/soders/.env

sshpass -p $SSH_PASSWORD ssh $MT2 /home/soders/Scripts/print-today-in-history.sh

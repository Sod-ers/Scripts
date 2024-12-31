#!/bin/bash

source /home/soders/.env

sshpass -p $SSH_PASSWORD ssh $PM /home/soders/Scripts/enable-tdarr-pm.sh
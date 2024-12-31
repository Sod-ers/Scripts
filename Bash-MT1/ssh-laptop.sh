#!/bin/bash

source /home/soders/.env

sshpass -p $SSH_PASSWORD ssh -t $MT3
sshpass -p $SSH_PASSWORD ssh -t $PM2

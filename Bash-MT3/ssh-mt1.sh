#!/bin/bash

source /home/soders/.env

sshpass -p $SSH_PASSWORD ssh -t $MT1 & sshpass -p $SSH_PASSWORD ssh -t $PM
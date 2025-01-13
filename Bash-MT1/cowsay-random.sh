#!/bin/bash

source /home/soders/.env

sshpass -p $SSH_PASSWORD scp -r /tmp/cowsay/ $MT2:/tmp/

sshpass -p $SSH_PASSWORD ssh $MT2 /home/soders/Scripts/cowsay-random.sh

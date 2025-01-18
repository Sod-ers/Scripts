#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

source /home/soders/.env

mkdir /tmp/cowsay/ > /dev/null 2>&1&

echo -n "Enter the message to cowsay: "
read input
echo $input > /tmp/cowsay/cowsaid.txt

sshpass -p $SSH_PASSWORD scp -r /tmp/cowsay/ $MT2:/tmp/

echo -e "${GREEN}Printing cowsay..${NC}"

sshpass -p $SSH_PASSWORD ssh $MT2 /home/soders/Scripts/cowsay.sh & sleep 5 && exit

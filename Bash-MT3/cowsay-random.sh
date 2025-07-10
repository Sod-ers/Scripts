#!/bin/bash

source ~/.env

scp -r /tmp/cowsay/ $MT2:/tmp/

ssh $MT2 /home/soders/Scripts/cowsay-random.sh

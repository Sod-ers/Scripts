#!/bin/bash

source ~/.env

nohup ~/Scripts/bedtime-turn-off-display.sh > /dev/null 2>&1&
ssh -t $MT2 ~/Scripts/white-noise.sh

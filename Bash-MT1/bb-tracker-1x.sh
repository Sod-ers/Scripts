#!/bin/bash

source ~/.env

ssh $MT2 chmod +x ~/Scripts/bb-tracker-printer.sh

ssh $MT2 ~/Scripts/bb-tracker-1x.sh

ssh $MT2 chmod -x ~/Scripts/bb-tracker-printer.sh
ssh $MT2 chmod -x ~/Scripts/bb-tracker-printer-silent.sh

#!/bin/bash

source ~/.env

ssh $MT2 chmod +x ~/.local/bin/bb-tracker-printer.sh

ssh $MT2 ~/.local/bin/bb-tracker-printer.sh

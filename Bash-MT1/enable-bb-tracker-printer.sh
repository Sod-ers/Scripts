#!/bin/bash

source ~/.env

ssh $MT2 chmod +x ~/.local/bin/bb-tracker-printer.sh

~/.local/bin/bb-tracker-printer.sh

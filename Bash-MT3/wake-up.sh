#!/bin/bash

source ~/.env

pkill kshutdown

ssh $MT2 ~/Scripts/mute-white-noise.sh

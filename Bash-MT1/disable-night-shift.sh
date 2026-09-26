#!/bin/bash

nohup pkill redshift > /dev/null 2>&1&
nohup /mnt/ssd120/Programs/OpenRGB/OpenRGB.AppImage --profile Dracula > /dev/null 2>&1&
pkill deckmaster
sleep 0.25
deckmaster -device BL25K1B04395 -deck ~/Programs/Deckmaster/Decks/dracula.deck
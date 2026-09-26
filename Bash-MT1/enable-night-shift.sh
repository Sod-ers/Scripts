#!/bin/bash

if pgrep -x "redshift" > /dev/null
then
nohup /mnt/ssd120/Programs/OpenRGB/OpenRGB.AppImage --profile Night-Shift > /dev/null 2>&1&
pkill deckmaster
sleep 0.5
deckmaster -device BL25K1B04395 -brightness 25 -deck ~/Programs/Deckmaster/Decks/night-shift.deck
else
nohup /mnt/ssd120/Programs/OpenRGB/OpenRGB.AppImage --profile Night-Shift > /dev/null 2>&1&
nohup redshift -c ~/.config/redshift.conf > /dev/null 2>&1&
pkill deckmaster
sleep 0.25
deckmaster -device BL25K1B04395 -brightness 25 -deck ~/Programs/Deckmaster/Decks/night-shift.deck
fi
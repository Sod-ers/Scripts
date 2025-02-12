#!/bin/bash

if pgrep -x "redshift" > /dev/null
then
nohup /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=openrgb org.openrgb.OpenRGB --profile Night-Shift > /dev/null 2>&1&
pkill deckmaster
sleep 0.5
deckmaster -device BL25K1B04395 -brightness 25 -deck ~/Programs/Deckmaster/Decks/night-shift.deck
else
nohup /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=openrgb org.openrgb.OpenRGB --profile Night-Shift > /dev/null 2>&1&
nohup redshift -c ~/.config/redshift.conf > /dev/null 2>&1&
pkill deckmaster
sleep 0.25
deckmaster -device BL25K1B04395 -brightness 25 -deck ~/Programs/Deckmaster/Decks/night-shift.deck
fi
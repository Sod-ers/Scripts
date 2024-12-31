#!/bin/bash

source /home/soders/.env

time=$(date +%k%M)
if [[ "$time" -ge $NIGHTSHIFT_ENABLED_TIME || "$time" -le $NIGHTSHIFT_DISABLED_TIME ]];then
deckmaster -device BL25K1B04395 -brightness 25 -deck /home/soders/Programs/Deckmaster/Decks/unlock-nightshift-enabled.deck > /dev/null 2>&1&
else
deckmaster -device BL25K1B04395 -brightness 100 -deck /home/soders/Programs/Deckmaster/Decks/unlock-nightshift-disabled.deck > /dev/null 2>&1&
fi

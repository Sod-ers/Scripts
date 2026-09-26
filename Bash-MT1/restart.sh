#!/bin/bash

pkill deckmaster
pkill SFP_UI

sleep .5

xfce4-session-logout --reboot

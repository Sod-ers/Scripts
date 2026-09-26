#!/bin/bash

pkill --signal SIGINT deckmaster
pkill --signal SIGINT SFP_UI
pkill --signal SIGINT OpenRGB

sleep .5

xfce4-session-logout --halt

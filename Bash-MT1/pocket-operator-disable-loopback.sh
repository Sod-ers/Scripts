#!/bin/bash

pactl unload-module module-loopback

rm /tmp/pocket-operator/object-serial.txt

notify-send -i ~/.icons/teenage-engineering-symbolic.png "Pocket Operator" "Loopback disabled."

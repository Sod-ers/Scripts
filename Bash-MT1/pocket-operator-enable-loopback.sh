#!/bin/bash

mkdir /tmp/pocket-operator/
touch /tmp/pocket-operator/object-serial.txt

systemctl --user restart pipewire.service
sleep 5

# pactl list short sources
pactl load-module module-loopback source=alsa_input.pci-0000_00_1f.3.analog-stereo

sleep 1

# $ matches any character present at the end of the string; REMOVES ANY CHARACTER AT END OF STRING
pactl list sink-inputs | grep object.serial | cut -c 20- | sed 's/.$//' > /tmp/pocket-operator/object-serial.txt

object_serial=$(cat /tmp/pocket-operator/object-serial.txt)
volume=30%

pactl set-sink-input-volume $object_serial $volume

notify-send -i ~/.icons/teenage-engineering-symbolic.png "Pocket Operator" "Loopback enabled."

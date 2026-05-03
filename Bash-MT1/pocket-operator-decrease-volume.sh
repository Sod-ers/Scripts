#!/bin/bash

object_serial=$(cat /tmp/pocket-operator/object-serial.txt)

pactl set-sink-input-volume $object_serial -5%

notify-send -i ~/.icons/teenage-engineering-symbolic.png "Pocket Operator" "-5%"

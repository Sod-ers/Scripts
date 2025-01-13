#!/bin/bash

input=$(cat /tmp/cowsay/cowsaid.txt)

cowsay $input >> /dev/usb/lp0
cowsay $input >> /dev/usb/lp1
cowsay $input >> /dev/usb/lp2

lpr -o fit-to-page -o media=Custom.70x25mm -P EPSON_TM-T20II /home/soders/Pictures/print.jpg
sleep 30 && lprm > /dev/null 2>&1&

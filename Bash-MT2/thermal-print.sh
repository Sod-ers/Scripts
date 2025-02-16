#!/bin/bash

date "+%I:%M:%S %p  %D" >> /dev/usb/lp0
date "+%I:%M:%S %p  %D" >> /dev/usb/lp1
date "+%I:%M:%S %p  %D" >> /dev/usb/lp2
echo " " >> /dev/usb/lp0
echo " " >> /dev/usb/lp1
echo " " >> /dev/usb/lp2
cat /tmp/thermal-print/print.md >> /dev/usb/lp0
cat /tmp/thermal-print/print.md >> /dev/usb/lp1
cat /tmp/thermal-print/print.md >> /dev/usb/lp2
lpr -o fit-to-page -o media=Custom.70x25mm -P EPSON_TM-T20II ~/Pictures/print.jpg
sleep 30
lprm

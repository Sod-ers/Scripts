#!/bin/bash

mkdir /tmp/thermal-print/
touch /tmp/thermal-print/print-urgent.txt

date "+%I:%M:%S %p  %D" > /tmp/thermal-print/print-urgent.txt
echo "------------------------------------------------" >> /tmp/thermal-print/print-urgent.txt
cat /tmp/thermal-print/urgent.md >> /tmp/thermal-print/print-urgent.txt

cat /tmp/thermal-print/print-urgent.txt >> /dev/usb/lp0
cat /tmp/thermal-print/print-urgent.txt >> /dev/usb/lp1
cat /tmp/thermal-print/print-urgent.txt >> /dev/usb/lp2

lpr -o fit-to-page -o media=Custom.70x25mm -P EPSON_TM-T20II ~/Pictures/print.jpg
sleep 30
lprm

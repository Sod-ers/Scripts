#!/bin/bash

date "+%A, %B %d, %Y" >> /dev/usb/lp0
date "+%A, %B %d, %Y" >> /dev/usb/lp1
date "+%A, %B %d, %Y" >> /dev/usb/lp2
echo " " >> /dev/usb/lp0
echo " " >> /dev/usb/lp1
echo " " >> /dev/usb/lp2
cat /home/soders/Documents/Notes/Groceries.md >> /dev/usb/lp0
cat /home/soders/Documents/Notes/Groceries.md >> /dev/usb/lp1
cat /home/soders/Documents/Notes/Groceries.md >> /dev/usb/lp2
lpr -o fit-to-page -o media=Custom.70x25mm -P EPSON_TM-T20II /home/soders/Pictures/print.jpg
sleep 30
lprm

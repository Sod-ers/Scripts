#!/bin/bash

RANGE=2
number=$RANDOM
let "number %= $RANGE"
case $number in
    0)
        command="/usr/games/cowsay"
        ;;
    1)
        command="/usr/games/cowthink"
        ;;
esac
fortune | $command -f `ls /usr/share/cowsay/cows/ | shuf -n 1` >> /dev/usb/lp1

lpr -o fit-to-page -o media=Custom.70x25mm -P EPSON_TM-T20II ~/Pictures/print.jpg
sleep 30 && lprm > /dev/null 2>&1&

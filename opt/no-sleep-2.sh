#!/bin/sh
sleep 10
hdparm -S 0 /dev/sde1 & sdparm --clear=STANDBY /dev/sde1 -S
exit 0

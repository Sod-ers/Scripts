#!/bin/sh
sleep 10
hdparm -S 0 /dev/sdf1 & sdparm --clear=STANDBY /dev/sdf1 -S
exit 0

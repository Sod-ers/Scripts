#!/bin/bash

source /home/soders/.env

uptime=$(cat /home/soders/Programs/System-Stats-MT1/uptime.txt)
cpu=$(cat /home/soders/Programs/System-Stats-MT1/cpu.txt)
mem=$(cat /home/soders/Programs/System-Stats-MT1/memory.txt)
gpu=$(cat /home/soders/Programs/System-Stats-MT1/gpu.txt)
disks=$(cat /home/soders/Programs/System-Stats-MT1/disks.txt)
cpu_detailed=$(cat /home/soders/Programs/System-Stats-MT1/cpu-detailed.txt)

echo "MT1 System Report:" >> /dev/usb/lp0; echo "MT1 System Report:" >> /dev/usb/lp1; echo "MT1 System Report:" >> /dev/usb/lp2
date "+%I:%M:%S %p  %D" >> /dev/usb/lp0; date "+%I:%M:%S %p  %D" >> /dev/usb/lp1; date "+%I:%M:%S %p  %D" >> /dev/usb/lp2
echo "________________________________________________" >> /dev/usb/lp0; echo "________________________________________________" >> /dev/usb/lp1; echo "________________________________________________" >> /dev/usb/lp2
echo "Uptime:$uptime" >> /dev/usb/lp0; echo "Uptime:$uptime" >> /dev/usb/lp1; echo "Uptime:$uptime" >> /dev/usb/lp2
echo "________________________________________________" >> /dev/usb/lp0; echo "________________________________________________" >> /dev/usb/lp1; echo "________________________________________________" >> /dev/usb/lp2
echo "CPU Usage: $cpu %" >> /dev/usb/lp0; echo "CPU Usage: $cpu %" >> /dev/usb/lp1; echo "CPU Usage: $cpu %" >> /dev/usb/lp2
echo "________________________________________________" >> /dev/usb/lp0; echo "________________________________________________" >> /dev/usb/lp1; echo "________________________________________________" >> /dev/usb/lp2
echo "$mem" >> /dev/usb/lp0; echo "$mem" >> /dev/usb/lp1; echo "$mem" >> /dev/usb/lp2
echo "________________________________________________" >> /dev/usb/lp0; echo "________________________________________________" >> /dev/usb/lp1; echo "________________________________________________" >> /dev/usb/lp2
echo "GPU Usage:
$gpu" >> /dev/usb/lp0; echo "GPU Usage:
$gpu" >> /dev/usb/lp1; echo "GPU Usage:
$gpu" >> /dev/usb/lp2
echo "________________________________________________" >> /dev/usb/lp0; echo "________________________________________________" >> /dev/usb/lp1; echo "________________________________________________" >> /dev/usb/lp2
echo "Disk Usage:
$disks" >> /dev/usb/lp0; echo "Disk Usage:
$disks" >> /dev/usb/lp1; echo "Disk Usage:
$disks" >> /dev/usb/lp2
echo "________________________________________________" >> /dev/usb/lp0; echo "________________________________________________" >> /dev/usb/lp1; echo "________________________________________________" >> /dev/usb/lp2
echo "Detailed CPU Usage:
$cpu_detailed" >> /dev/usb/lp0; echo "Detailed CPU Usage:
$cpu_detailed" >> /dev/usb/lp1; echo "Detailed CPU Usage:
$cpu_detailed" >> /dev/usb/lp2

lpr -o fit-to-page -o media=Custom.70x25mm -P EPSON_TM-T20II /home/soders/Pictures/print.jpg
sleep 30
lprm

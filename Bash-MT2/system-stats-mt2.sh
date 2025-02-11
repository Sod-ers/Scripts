#!/bin/bash

source ~/.env

mkdir /tmp/System-Stats-MT2/

touch /tmp/System-Stats-MT2/uptime.txt
touch /tmp/System-Stats-MT2/memory.txt
touch /tmp/System-Stats-MT2/cpu.txt
touch /tmp/System-Stats-MT2/cpu-detailed.txt
touch /tmp/System-Stats-MT2/disks.txt

uptime -p > /tmp/uptime-mt2.txt
sed 's/\bup\b//g' /tmp/uptime-mt2.txt > /tmp/System-Stats-MT2/uptime.txt

free -m | awk 'NR==2{printf "MEM Usage: %s/%s MB, %.2f %%\n", $3,$2,$3*100/$2 }' > /tmp/System-Stats-MT2/memory.txt
top -bn1 | awk '/Cpu/ {print $2}' > /tmp/System-Stats-MT2/cpu.txt

echo "process.id, utilization.cpu, name" > /tmp/System-Stats-MT2/cpu-detailed.txt
ps -eo pid,pcpu,comm | awk '{if ($2 > 4) print }' >> /tmp/System-Stats-MT2/cpu-detailed.txt

[ -f "/" ] || 2> /dev/null df -H / --output=source,pcent,used,avail > /tmp/System-Stats-MT2/disks.txt
sed -i 's/Filesystem/Mint:     /g' /tmp/System-Stats-MT2/disks.txt
[ -f "/dev/sda2" ] || 2> /dev/null df -H /dev/sda2 --output=source,pcent,used,avail >> /tmp/System-Stats-MT2/disks.txt
sed -i 's/Filesystem/QBit:     /g' /tmp/System-Stats-MT2/disks.txt

uptime=$(cat /tmp/System-Stats-MT2/uptime.txt)
cpu=$(cat /tmp/System-Stats-MT2/cpu.txt)
mem=$(cat /tmp/System-Stats-MT2/memory.txt)
disks=$(cat /tmp/System-Stats-MT2/disks.txt)
cpu_detailed=$(cat /tmp/System-Stats-MT2/cpu-detailed.txt)

echo "MT2 System Report:" >> /dev/usb/lp0; echo "MT2 System Report:" >> /dev/usb/lp1; echo "MT2 System Report:" >> /dev/usb/lp2
date "+%I:%M:%S %p  %D" >> /dev/usb/lp0; date "+%I:%M:%S %p  %D" >> /dev/usb/lp1; date "+%I:%M:%S %p  %D" >> /dev/usb/lp2
echo "________________________________________________" >> /dev/usb/lp0; echo "________________________________________________" >> /dev/usb/lp1; echo "________________________________________________" >> /dev/usb/lp2
echo "Uptime:$uptime" >> /dev/usb/lp0; echo "Uptime:$uptime" >> /dev/usb/lp1; echo "Uptime:$uptime" >> /dev/usb/lp2
echo "________________________________________________" >> /dev/usb/lp0; echo "________________________________________________" >> /dev/usb/lp1; echo "________________________________________________" >> /dev/usb/lp2
echo "CPU Usage: $cpu %" >> /dev/usb/lp0; echo "CPU Usage: $cpu %" >> /dev/usb/lp1; echo "CPU Usage: $cpu %" >> /dev/usb/lp2
echo "________________________________________________" >> /dev/usb/lp0; echo "________________________________________________" >> /dev/usb/lp1; echo "________________________________________________" >> /dev/usb/lp2
echo "$mem" >> /dev/usb/lp0; echo "$mem" >> /dev/usb/lp1; echo "$mem" >> /dev/usb/lp2
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

lpr -o fit-to-page -o media=Custom.70x25mm -P EPSON_TM-T20II ~/Pictures/print.jpg
sleep 30
lprm

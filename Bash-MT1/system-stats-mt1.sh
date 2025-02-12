#!/bin/bash

source ~/.env

mkdir /tmp/System-Stats-MT1/

touch /tmp/System-Stats-MT1/uptime.txt
touch /tmp/System-Stats-MT1/memory.txt
touch /tmp/System-Stats-MT1/cpu.txt
touch /tmp/System-Stats-MT1/cpu-detailed.txt
touch /tmp/System-Stats-MT1/gpu.txt
touch /tmp/System-Stats-MT1/cpu.txt
touch /tmp/System-Stats-MT1/cpu-detailed.txt
touch /tmp/System-Stats-MT1/disks.txt

uptime -p > /tmp/uptime-mt1.txt
sed 's/\bup\b//g' /tmp/uptime-mt1.txt > /tmp/System-Stats-MT1/uptime.txt

free -m | awk 'NR==2{printf "MEM Usage: %s/%s MB, %.2f %%\n", $3,$2,$3*100/$2 }' > /tmp/System-Stats-MT1/memory.txt
top -bn1 | awk '/Cpu/ {print $2}' > /tmp/System-Stats-MT1/cpu.txt

echo "process.id, utilization.cpu, name" > /tmp/System-Stats-MT1/cpu-detailed.txt
ps -eo pid,pcpu,comm | awk '{if ($2 > 4) print }' >> /tmp/System-Stats-MT1/cpu-detailed.txt

nvidia-smi --format=csv --query-gpu=name,memory.used,utilization.gpu > /tmp/System-Stats-MT1/gpu.txt

[ -f "/" ] || 2> /dev/null df -H / --output=source,pcent,used,avail > /tmp/System-Stats-MT1/disks.txt
sed -i 's/Filesystem/Mint:      /g' /tmp/System-Stats-MT1/disks.txt
[ -f "/dev/sdf1" ] || 2> /dev/null df -H /dev/sdf1 --output=source,pcent,used,avail >> /tmp/System-Stats-MT1/disks.txt
[ -f "/dev/sde1" ] || 2> /dev/null df -H /dev/sde1 --output=source,pcent,used,avail >> /tmp/System-Stats-MT1/disks.txt
sed -i 's/Filesystem/7TBEXT4:   /g' /tmp/System-Stats-MT1/disks.txt
[ -f "/dev/sdf2" ] || 2> /dev/null df -H /dev/sdf2 --output=source,pcent,used,avail >> /tmp/System-Stats-MT1/disks.txt
[ -f "/dev/sde2" ] || 2> /dev/null df -H /dev/sde2 --output=source,pcent,used,avail >> /tmp/System-Stats-MT1/disks.txt
sed -i 's/Filesystem/2TBNTFS:   /g' /tmp/System-Stats-MT1/disks.txt
[ -f "/dev/sdb1" ] || 2> /dev/null df -H /dev/sdb1 --output=source,pcent,used,avail >> /tmp/System-Stats-MT1/disks.txt
sed -i 's/Filesystem/Backups:   /g' /tmp/System-Stats-MT1/disks.txt
[ -f "/dev/sdd2" ] || 2> /dev/null df -H /dev/sdd2 --output=source,pcent,used,avail >> /tmp/System-Stats-MT1/disks.txt
sed -i 's/Filesystem/Peppermint:/g' /tmp/System-Stats-MT1/disks.txt
[ -f "/dev/sdc2" ] || 2> /dev/null df -H /dev/sdc2 --output=source,pcent,used,avail >> /tmp/System-Stats-MT1/disks.txt
sed -i 's/Filesystem/Mint2:     /g' /tmp/System-Stats-MT1/disks.txt

scp -r /tmp/System-Stats-MT1/ $MT2:/tmp/ 2> /dev/null

ssh $MT2 ~/Scripts/system-stats-mt1.sh

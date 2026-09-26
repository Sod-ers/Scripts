#!/bin/bash

# Use blank template to load faster
if [ -e /tmp/obsidian-first-launch-check/false.txt ]; then
/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=obsidian.sh --file-forwarding md.obsidian.Obsidian @@u %U @@ obsidian://vault/Weekly-Planner/Templates/Blank & sleep 2.25 && /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=obsidian.sh --file-forwarding md.obsidian.Obsidian @@u %U @@ obsidian://vault/Weekly-Planner/Later.ematrix
else
/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=obsidian.sh --file-forwarding md.obsidian.Obsidian @@u %U @@ obsidian://vault/Weekly-Planner/Templates/Blank & sleep 3 && /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=obsidian.sh --file-forwarding md.obsidian.Obsidian @@u %U @@ obsidian://vault/Weekly-Planner/Later.ematrix
fi

mkdir /tmp/obsidian-first-launch-check/
touch /tmp/obsidian-first-launch-check/false.txt

# System package
# /opt/Obsidian/obsidian %U obsidian://vault/Weekly-Planner/Later.ematrix

# App image
# ~/Programs/Obisidan/Obsidian.AppImage obsidian://vault/Weekly-Planner/Later.ematrix

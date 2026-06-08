#!/bin/bash

# Use blank template to load faster
/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=obsidian.sh --file-forwarding md.obsidian.Obsidian @@u %U @@ obsidian://vault/Weekly-Planner/Templates/Blank & sleep 1.75 && /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=obsidian.sh --file-forwarding md.obsidian.Obsidian @@u %U @@ obsidian://vault/Weekly-Planner/Later.ematrix

# System package
# /opt/Obsidian/obsidian %U obsidian://vault/Weekly-Planner/Later.ematrix

# App image
# ~/Programs/Obisidan/Obsidian.AppImage obsidian://vault/Weekly-Planner/Later.ematrix

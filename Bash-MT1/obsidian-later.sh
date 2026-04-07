#!/bin/bash

# Kanban fix
# /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=obsidian.sh --file-forwarding md.obsidian.Obsidian @@u %U @@ obsidian://vault/Weekly-Planner/Shed-e-matrix & sleep 2 && /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=obsidian.sh --file-forwarding md.obsidian.Obsidian @@u %U @@ obsidian://vault/Weekly-Planner/Later-e-matrix

# Use blank template to load faster
/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=obsidian.sh --file-forwarding md.obsidian.Obsidian @@u %U @@ obsidian://vault/Weekly-Planner/Templates/Tasks-e-matrix & sleep 2 && /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=obsidian.sh --file-forwarding md.obsidian.Obsidian @@u %U @@ obsidian://vault/Weekly-Planner/Later-e-matrix

# PREVIOUS DELAY: 1.75

# System package
# /opt/Obsidian/obsidian %U obsidian://vault/Weekly-Planner/Later-e-matrix

# App image
# ~/Programs/Obisidan/Obsidian.AppImage obsidian://vault/Weekly-Planner/Later-e-matrix

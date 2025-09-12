#!/bin/bash

# Kanban fix
/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=obsidian.sh --file-forwarding md.obsidian.Obsidian @@u %U @@ obsidian://vault/Weekly-Planner/Shed-e-matrix & sleep 1.35 && /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=obsidian.sh --file-forwarding md.obsidian.Obsidian @@u %U @@ obsidian://vault/Weekly-Planner/Later-e-matrix

#!/bin/bash

# Use blank template to load faster
/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=obsidian.sh --file-forwarding md.obsidian.Obsidian @@u %U @@ obsidian://vault/Project-Planner/Templates/Tasks-e-matrix & sleep 1.75 && /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=obsidian.sh --file-forwarding md.obsidian.Obsidian @@u %U @@ obsidian://vault/Project-Planner/surf_brainstorm-e-matrix

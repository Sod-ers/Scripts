#!/bin/bash

# Use blank template to load faster
if [ -e /tmp/obsidian-first-launch-check/false.txt ]; then
/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=obsidian.sh --file-forwarding md.obsidian.Obsidian @@u %U @@ obsidian://vault/Project-Planner/Templates/Blank & sleep 2.25 && /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=obsidian.sh --file-forwarding md.obsidian.Obsidian @@u %U @@ obsidian://vault/Project-Planner/Cosmetics.ematrix
else
/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=obsidian.sh --file-forwarding md.obsidian.Obsidian @@u %U @@ obsidian://vault/Project-Planner/Templates/Blank & sleep 3 && /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=obsidian.sh --file-forwarding md.obsidian.Obsidian @@u %U @@ obsidian://vault/Project-Planner/Cosmetics.ematrix
fi

mkdir /tmp/obsidian-first-launch-check/
touch /tmp/obsidian-first-launch-check/false.txt

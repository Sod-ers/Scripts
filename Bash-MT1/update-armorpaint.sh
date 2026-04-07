#!/bin/bash

# Backup current install
cd "/home/soders/Programs/ArmorPaint Backups"
zip -r "armorpaint-$(date +"%Y-%m-%d-%s").tar.gz" ~/ArmorPaint/
# Remove old build, clone, & build new
cd ~/armory3d/
rm -rf ~/armory3d/*
git clone https://github.com/armory3d/armortools.git
cd ~/armory3d/armortools/paint/
../base/make --compile
# Save configs & themes before wiping current install
cp ~/ArmorPaint/data/themes/Dracula.json ~/Configs/ArmorPaint/themes/
cp ~/ArmorPaint/data/config.json ~/Configs/ArmorPaint/
# Delete current install & copy build as new install
rm ~/ArmorPaint/ArmorPaint
rm -r ~/ArmorPaint/data
cp ~/armory3d/armortools/paint/build/out/ArmorPaint ~/ArmorPaint/
cp -r ~/armory3d/armortools/paint/build/out/data ~/ArmorPaint/
# Import configs
rm ~/ArmorPaint/data/config.json
cp ~/Configs/ArmorPaint/config.json ~/ArmorPaint/data/
cp ~/Configs/ArmorPaint/themes/Dracula.json ~/ArmorPaint/data/themes/

#!/bin/bash

source ~/.env

###

# Scripts
scp -r $MT2:/home/soders/Scripts/* /home/soders/Nextcloud/GitHub/Scripts/Scripts/Bash-MT2/
scp -r $MT3:/home/soders/Scripts/* /home/soders/Nextcloud/GitHub/Scripts/Scripts/Bash-MT3/
cp -r /media/soders/2TBNTFS/Scripts/* /home/soders/Nextcloud/GitHub/Scripts/Scripts/Batch/
cp -r /home/soders/Scripts/* /home/soders/Nextcloud/GitHub/Scripts/Scripts/Bash-MT1/

# Configs
# GMOD
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/aliases.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/aliases.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-aliases.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/bb-aliases.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-chat.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/bb-chat.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-controls.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/bb-controls.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-unbound.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/bb-unbound.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/settings.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/settings.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/sensitivity.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/sensitivity.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/stellar-aliases.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/stellar-aliases.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/stellar-chat.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/stellar-chat.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/stellar-controls.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/stellar-controls.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/stellar-unbound.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/stellar-unbound.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/tier.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/tier.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-autoexec.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/bb-autoexec.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/stellar-autoexec.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/stellar-autoexec.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/volume.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/volume.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/mute.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/mute.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/stellar-bhop-autoexec.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/stellar-bhop-autoexec.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/stellar-easy-autoexec.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/stellar-easy-autoexec.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/stellar-public-autoexec.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/stellar-public-autoexec.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-climb-autoexec.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/bb-climb-autoexec.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-easy-autoexec.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/bb-easy-autoexec.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-hard-autoexec.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/bb-hard-autoexec.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/chat.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/chat.cfg
cp /home/soders/Configs/GMod/BB/mvp.cfg /media/soders/2TBNTFS/Documents/Configs/GMod/BB/mvp.cfg
cp /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/sprays.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/sprays.cfg
# OPEN-FORTRESS
cp /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/volume.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/volume.cfg
cp /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/autoexec.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/autoexec.cfg
cp /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/settings.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/settings.cfg
cp /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/mute.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/mute.cfg
cp /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/alias.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/alias.cfg
cp /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/controls.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/controls.cfg
cp /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/unbound.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/unbound.cfg
cp /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/colors.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/colors.cfg
cp /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/sprays.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/sprays.cfg
cp /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/announcers.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/announcers.cfg
cp /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/chat.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/chat.cfg
cp /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/practice.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/practice.cfg
cp -r /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/materials/vgui/logos /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/
# HL2DM
cp "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg/autoexec.cfg" /home/soders/Nextcloud/GitHub/Configs/Configs/HL2DM/autoexec.cfg
cp "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg/volume.cfg" /home/soders/Nextcloud/GitHub/Configs/Configs/HL2DM/volume.cfg
cp "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg/mute.cfg" /home/soders/Nextcloud/GitHub/Configs/Configs/HL2DM/mute.cfg
cp "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg/settings.cfg" /home/soders/Nextcloud/GitHub/Configs/Configs/HL2DM/settings.cfg
cp "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg/aliases.cfg" /home/soders/Nextcloud/GitHub/Configs/Configs/HL2DM/aliases.cfg
cp "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg/chat.cfg" /home/soders/Nextcloud/GitHub/Configs/Configs/HL2DM/chat.cfg
cp "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg/unbound.cfg" /home/soders/Nextcloud/GitHub/Configs/Configs/HL2DM/unbound.cfg
cp "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg/controls.cfg" /home/soders/Nextcloud/GitHub/Configs/Configs/HL2DM/controls.cfg
cp "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg/sprays.cfg" /home/soders/Nextcloud/GitHub/Configs/Configs/HL2DM/sprays.cfg

###

~/Scripts/git-remove-private.sh

cd ~/Nextcloud/GitHub/Bookmarks/Bookmarks/
git checkout main
git pull
git merge main
git add .
git commit -m "$(date +"%D  %I:%M:%S %p")"
git push origin main

cd ~/Nextcloud/GitHub/Homepage/Homepage/
git checkout main
git pull
git merge main
git add .
git commit -m "$(date +"%D  %I:%M:%S %p")"
git push origin main

cd ~/Nextcloud/GitHub/Programs/Programs/
git checkout main
git pull
git merge main
git add .
git commit -m "$(date +"%D  %I:%M:%S %p")"
git push origin main

cd ~/Nextcloud/GitHub/Scripts/Scripts/
git checkout main
git pull
git merge main
git add .
git commit -m "$(date +"%D  %I:%M:%S %p")"
git push origin main

cd ~/Nextcloud/GitHub/Configs/Configs/
git checkout main
git pull
git merge main
git add .
git commit -m "$(date +"%D  %I:%M:%S %p")"
git push origin main

cd ~/Nextcloud/GitHub/Misc/Misc/
git checkout main
git pull
git merge main
git add .
git commit -m "$(date +"%D  %I:%M:%S %p")"
git push origin main

cd ~/Nextcloud/GitHub/GMod-Resources/GMod-Resources/
git checkout main
git pull
git merge main
git add .
git commit -m "$(date +"%D  %I:%M:%S %p")"
git push origin main

cd ~/Nextcloud/GitHub/BB-Tracker/BB-Tracker/
git checkout main
git pull
git merge main
git add .
git commit -m "$(date +"%D  %I:%M:%S %p")"
git push origin main

notify-send -i ~/.icons/GitHub-Symbolic.png "GitHub" "Repositories updated."
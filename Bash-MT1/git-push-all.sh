#!/bin/bash

source /home/soders/.env

###

# Scripts
sshpass -p $SSH_PASSWORD scp -r $MT2:/home/soders/Scripts/* /home/soders/Nextcloud/GitHub/Scripts/Scripts/Bash-MT2/
sshpass -p $SSH_PASSWORD scp -r $MT3:/home/soders/Scripts/* /home/soders/Nextcloud/GitHub/Scripts/Scripts/Bash-MT3/
cp -r /home/soders/Scripts/* /home/soders/Nextcloud/GitHub/Scripts/Scripts/Bash-MT1/

# Configs
# GMOD
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/aliases.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/aliases.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-aliases.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/bb-aliases.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-chat.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/bb-chat.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-controls.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/bb-controls.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-unbound.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/bb-unbound.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/linux-settings.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/linux-settings.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/windows-settings.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/windows-settings.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/stellar-aliases.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/stellar-aliases.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/stellar-chat.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/stellar-chat.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/stellar-controls.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/stellar-controls.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/stellar-unbound.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/stellar-unbound.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/tier.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/tier.cfg
cp /home/soders/Configs/GMod/BB/bb-autoexec.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/bb-autoexec.cfg
cp /home/soders/Configs/GMod/STELLAR/stellar-autoexec.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/stellar-autoexec.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/volume.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/volume.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/mute.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/mute.cfg
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
# HL2DM
cp "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg/autoexec.cfg" /home/soders/Nextcloud/GitHub/Configs/Configs/HL2DM/autoexec.cfg
cp "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg/volume.cfg" /home/soders/Nextcloud/GitHub/Configs/Configs/HL2DM/volume.cfg
cp "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg/mute.cfg" /home/soders/Nextcloud/GitHub/Configs/Configs/HL2DM/mute.cfg
cp "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg/settings.cfg" /home/soders/Nextcloud/GitHub/Configs/Configs/HL2DM/settings.cfg
cp "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg/aliases.cfg" /home/soders/Nextcloud/GitHub/Configs/Configs/HL2DM/aliases.cfg
cp "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg/chat.cfg" /home/soders/Nextcloud/GitHub/Configs/Configs/HL2DM/chat.cfg
cp "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg/unbound.cfg" /home/soders/Nextcloud/GitHub/Configs/Configs/HL2DM/unbound.cfg
cp "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg/controls.cfg" /home/soders/Nextcloud/GitHub/Configs/Configs/HL2DM/controls.cfg

###

/home/soders/Scripts/git-remove-private.sh

cd /home/soders/Nextcloud/GitHub/Bookmarks/Bookmarks/
git checkout main
git merge main
git add .
git commit -m "$(date +"%D  %I:%M:%S %p")"
git push origin main

cd /home/soders/Nextcloud/GitHub/Homepage/Homepage/
git checkout main
git merge main
git add .
git commit -m "$(date +"%D  %I:%M:%S %p")"
git push origin main

cd /home/soders/Nextcloud/GitHub/Programs/Programs/
git checkout main
git merge main
git add .
git commit -m "$(date +"%D  %I:%M:%S %p")"
git push origin main

cd /home/soders/Nextcloud/GitHub/Scripts/Scripts/
git checkout main
git merge main
git add .
git commit -m "$(date +"%D  %I:%M:%S %p")"
git push origin main

cd /home/soders/Nextcloud/GitHub/Configs/Configs/
git checkout main
git merge main
git add .
git commit -m "$(date +"%D  %I:%M:%S %p")"
git push origin main

cd /home/soders/Nextcloud/GitHub/Misc/Misc/
git checkout main
git merge main
git add .
git commit -m "$(date +"%D  %I:%M:%S %p")"
git push origin main

cd /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/
git checkout main
git merge main
git add .
git commit -m "$(date +"%D  %I:%M:%S %p")"
git push origin main

cd /home/soders/Nextcloud/GitHub/BB-Tracker/BB-Tracker/
git checkout main
git merge main
git add .
git commit -m "$(date +"%D  %I:%M:%S %p")"
git push origin main

notify-send -i /home/soders/.icons/GitHub-Symbolic.png "GitHub" "Repositories updated."

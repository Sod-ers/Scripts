#!/bin/bash

source ~/.env

# Close programs
pkill nextcloud

###

# Scripts
mkdir /tmp/Bash-MT2/
scp -r $MT2:/home/soders/Scripts/* /tmp/Bash-MT2/
rsync -r --delete /tmp/Bash-MT2/ /home/soders/Nextcloud/GitHub/Scripts/Scripts/Bash-MT2/
rm -r /tmp/Bash-MT2/

mkdir /tmp/Bash-MT3/
scp -r $MT3:/home/soders/Scripts/* /tmp/Bash-MT3/
rsync -r --delete /tmp/Bash-MT3/ /home/soders/Nextcloud/GitHub/Scripts/Scripts/Bash-MT3/
rm -r /tmp/Bash-MT3/

rsync -r /media/soders/2TBNTFS/Scripts/* /home/soders/Nextcloud/GitHub/Scripts/Scripts/Batch/
rsync -r --delete /home/soders/Scripts/* /home/soders/Nextcloud/GitHub/Scripts/Scripts/Bash-MT1/

# Configs
# GMOD
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/aliases.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/aliases.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-aliases.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/bb-aliases.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-chat.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/bb-chat.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-controls.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/bb-controls.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-unbound.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/bb-unbound.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/settings.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/settings.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/sensitivity.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/sensitivity.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/stellar-aliases.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/stellar-aliases.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/stellar-chat.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/stellar-chat.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/stellar-controls.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/stellar-controls.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/stellar-unbound.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/stellar-unbound.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/tier.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/tier.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-autoexec.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/bb-autoexec.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/stellar-autoexec.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/stellar-autoexec.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/volume.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/volume.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/mute.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/mute.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/stellar-bhop-autoexec.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/stellar-bhop-autoexec.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/stellar-easy-autoexec.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/stellar-easy-autoexec.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/stellar-public-autoexec.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/stellar-public-autoexec.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-climb-autoexec.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/bb-climb-autoexec.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-easy-autoexec.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/bb-easy-autoexec.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-hard-autoexec.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/bb-hard-autoexec.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/chat.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/chat.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/server.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/server.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/test.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/test.cfg
rsync /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/test-autoexec.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/test-autoexec.cfg
rsync /home/soders/Configs/GMod/BB/mvp.cfg /media/soders/2TBNTFS/Documents/Configs/GMod/BB/mvp.cfg
mkdir /media/soders/2TBNTFS/Documents/Configs/GMod/BB/
rsync -r --delete /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/data/bb_servers/outfits /media/soders/2TBNTFS/Documents/Configs/GMod/BB/
rsync /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/sprays.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/sprays.cfg
# OPEN-FORTRESS
rsync /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/volume.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/volume.cfg
rsync /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/autoexec.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/autoexec.cfg
rsync /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/settings.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/settings.cfg
rsync /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/mute.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/mute.cfg
rsync /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/alias.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/alias.cfg
rsync /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/controls.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/controls.cfg
rsync /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/unbound.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/unbound.cfg
rsync /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/colors.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/colors.cfg
rsync /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/sprays.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/sprays.cfg
rsync /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/announcers.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/announcers.cfg
rsync /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/chat.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/chat.cfg
rsync /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/cfg/practice.cfg /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/practice.cfg
rsync -r --ignore-existing --delete /home/soders/.steam/debian-installation/steamapps/sourcemods/open_fortress/materials/vgui/logos /home/soders/Nextcloud/GitHub/Configs/Configs/Open-Fortress/
# HL2DM
rsync "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg/autoexec.cfg" /home/soders/Nextcloud/GitHub/Configs/Configs/HL2DM/autoexec.cfg
rsync "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg/volume.cfg" /home/soders/Nextcloud/GitHub/Configs/Configs/HL2DM/volume.cfg
rsync "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg/mute.cfg" /home/soders/Nextcloud/GitHub/Configs/Configs/HL2DM/mute.cfg
rsync "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg/settings.cfg" /home/soders/Nextcloud/GitHub/Configs/Configs/HL2DM/settings.cfg
rsync "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg/aliases.cfg" /home/soders/Nextcloud/GitHub/Configs/Configs/HL2DM/aliases.cfg
rsync "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg/chat.cfg" /home/soders/Nextcloud/GitHub/Configs/Configs/HL2DM/chat.cfg
rsync "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg/unbound.cfg" /home/soders/Nextcloud/GitHub/Configs/Configs/HL2DM/unbound.cfg
rsync "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg/controls.cfg" /home/soders/Nextcloud/GitHub/Configs/Configs/HL2DM/controls.cfg
rsync "/mnt/WIN1/Program Files (x86)/Steam/steamapps/common/Half-Life 2 Deathmatch/hl2mp/cfg/sprays.cfg" /home/soders/Nextcloud/GitHub/Configs/Configs/HL2DM/sprays.cfg

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

# Enable programs
nohup "/usr/bin/nextcloud" --background > /dev/null 2>&1&

#!/bin/bash

source /home/soders/.env

###

# Scripts
sshpass -p $SSH_PASSWORD scp -r $MT2:/home/soders/Scripts/* /home/soders/Nextcloud/GitHub/Scripts/Scripts/Bash-MT2/
sshpass -p $SSH_PASSWORD scp -r $MT3:/home/soders/Scripts/* /home/soders/Nextcloud/GitHub/Scripts/Scripts/Bash-MT3/
cp -r /home/soders/Scripts/* /home/soders/Nextcloud/GitHub/Scripts/Scripts/Bash-MT1/

# Configs
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/aliases.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/aliases.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-aliases.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/bb-aliases.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-chat.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/bb-chat.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-controls.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/bb-controls.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/bb-unbound.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/bb-unbound.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/linux-game-settings-mute.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/linux-game-settings-mute.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/linux-game-settings-volume.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/linux-game-settings-volume.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/stellar-aliases.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/stellar-aliases.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/stellar-chat.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/stellar-chat.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/stellar-controls.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/stellar-controls.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/stellar-unbound.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/stellar-unbound.cfg
cp /home/soders/.steam/debian-installation/steamapps/common/GarrysMod/garrysmod/cfg/tier.cfg /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/CFG/tier.cfg
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

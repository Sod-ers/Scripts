#!/bin/bash

source /home/soders/.env

###

# Scripts
sshpass -p $SSH_PASSWORD scp -r $MT2:/home/soders/Scripts/* /home/soders/Nextcloud/GitHub/Scripts/Scripts/Bash-MT2/
sshpass -p $SSH_PASSWORD scp -r $MT3:/home/soders/Scripts/* /home/soders/Nextcloud/GitHub/Scripts/Scripts/Bash-MT3/
cp -r /home/soders/Scripts/* /home/soders/Nextcloud/GitHub/Scripts/Scripts/Bash-MT1/

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

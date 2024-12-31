#!/bin/bash

cp -r /home/soders/Scripts/. /home/soders/Nextcloud/GitHub/Scripts/Scripts/Bash-MT1/

/home/soders/Scripts/git-remove-private.sh

cd /home/soders/Nextcloud/GitHub/Bookmarks/Bookmarks/
git add .
git commit -m "$(date +"%D  %I:%M:%S %p")"
git push origin main

cd /home/soders/Nextcloud/GitHub/Homepage/Homepage/
git add .
git commit -m "$(date +"%D  %I:%M:%S %p")"
git push origin main

cd /home/soders/Nextcloud/GitHub/Programs/Programs/
git add .
git commit -m "$(date +"%D  %I:%M:%S %p")"
git push origin main

cd /home/soders/Nextcloud/GitHub/Scripts/Scripts/
git add .
git commit -m "$(date +"%D  %I:%M:%S %p")"
git push origin main

cd /home/soders/Nextcloud/GitHub/Configs/Configs/
git add .
git commit -m "$(date +"%D  %I:%M:%S %p")"
git push origin main

cd /home/soders/Nextcloud/GitHub/Misc/Misc/
git add .
git commit -m "$(date +"%D  %I:%M:%S %p")"
git push origin main

cd /home/soders/Nextcloud/GitHub/BB-Tracker/BB-Tracker/
git add .
git commit -m "$(date +"%D  %I:%M:%S %p")"
git push origin main

cd /home/soders/Nextcloud/GitHub/GMod-Resources/GMod-Resources/
git add .
git commit -m "$(date +"%D  %I:%M:%S %p")"
git push origin main

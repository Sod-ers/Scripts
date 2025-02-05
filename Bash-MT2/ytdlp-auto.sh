#!/bin/bash

source /home/soders/.env

diff --brief <(sort /home/soders/Configs/YTDLP/Automation-Status.txt) <(sort /home/soders/Configs/YTDLP/Validator.txt) >/dev/null
comp_value=$?

if [ $comp_value -eq 1 ]
then
sshpass -p $SSH_PASSWORD scp $MT1:/home/soders/Configs/YTDLP/Subscriptions-Playlists.txt /home/soders/Configs/YTDLP/Subscriptions-Playlists.txt 2> /dev/null

sshpass -p $SSH_PASSWORD scp $MT1:/home/soders/Configs/YTDLP/watch-history.txt /home/soders/Configs/YTDLP/mt1-watch-history.txt 2> /dev/null

cat /home/soders/Configs/YTDLP/mt1-watch-history.txt >> /home/soders/Configs/YTDLP/watch-history-unsynced.txt

cat /home/soders/Configs/YTDLP/watch-history.txt >> /home/soders/Configs/YTDLP/watch-history-unsynced.txt

awk '!seen[$0]++' /home/soders/Configs/YTDLP/watch-history-unsynced.txt > /home/soders/Configs/YTDLP/watch-history.txt

echo " " > /home/soders/Configs/YTDLP/watch-history-unsynced.txt

sshpass -p $SSH_PASSWORD scp /home/soders/Configs/YTDLP/watch-history.txt $MT1:/home/soders/Configs/YTDLP/watch-history.txt 2> /dev/null

source "/home/soders/Configs/YTDLP/Subscriptions-Playlists.txt"
# /home/soders/.local/bin/ytdlp-playlist-1080p -U
/home/soders/.local/bin/ytdlp-videos-1080p -U
# /home/soders/.local/bin/ytdlp-playlist-1080p $watch_later_playlist
sleep 1
/home/soders/.local/bin/ytdlp-videos-1080p --match-filter "!was_live & original_url!*=/shorts/" $primary_subscriptions --playlist-end 1 --lazy-playlist --dateafter now-2days
/home/soders/Scripts/delete-empty-media-directories-mt2.sh
/home/soders/Scripts/completion-chime.sh
sleep 1
else
echo " "
fi

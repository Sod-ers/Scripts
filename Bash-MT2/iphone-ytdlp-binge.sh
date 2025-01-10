#!/bin/bash

source /home/soders/.env

source "/home/soders/Configs/YTDLP/Subscriptions-Playlists.txt"

sshpass -p $SSH_PASSWORD scp $MT1:/home/soders/Configs/YTDLP/Subscriptions-Playlists.txt /home/soders/Configs/YTDLP/Subscriptions-Playlists.txt 2> /dev/null

sshpass -p $SSH_PASSWORD scp $MT1:/home/soders/Configs/YTDLP/watch-history.txt /home/soders/Configs/YTDLP/mt1-watch-history.txt 2> /dev/null

cat /home/soders/Configs/YTDLP/mt1-watch-history.txt >> /home/soders/Configs/YTDLP/watch-history-unsynced.txt

cat /home/soders/Configs/YTDLP/watch-history.txt >> /home/soders/Configs/YTDLP/watch-history-unsynced.txt

awk '!seen[$0]++' /home/soders/Configs/YTDLP/watch-history-unsynced.txt > /home/soders/Configs/YTDLP/watch-history.txt

echo " " > /home/soders/Configs/YTDLP/watch-history-unsynced.txt

sshpass -p $SSH_PASSWORD scp /home/soders/Configs/YTDLP/watch-history.txt $MT1:/home/soders/Configs/YTDLP/watch-history.txt 2> /dev/null

/home/soders/.local/bin/ytdlp-playlist-1080p $secondary_playlist --playlist-random --max-downloads 10 > /dev/null 2>&1&

#!/bin/bash

source ~/.env

scp $MT1:~/Configs/YTDLP/Subscriptions-Playlists.txt ~/Configs/YTDLP/Subscriptions-Playlists.txt 2> /dev/null

scp $MT1:~/Configs/YTDLP/watch-history.txt ~/Configs/YTDLP/mt1-watch-history.txt 2> /dev/null

cat ~/Configs/YTDLP/mt1-watch-history.txt >> ~/Configs/YTDLP/watch-history-unsynced.txt

cat ~/Configs/YTDLP/watch-history.txt >> ~/Configs/YTDLP/watch-history-unsynced.txt

awk '!seen[$0]++' ~/Configs/YTDLP/watch-history-unsynced.txt > ~/Configs/YTDLP/watch-history.txt

echo " " > ~/Configs/YTDLP/watch-history-unsynced.txt

scp ~/Configs/YTDLP/watch-history.txt $MT1:~/Configs/YTDLP/watch-history.txt 2> /dev/null

source ~/Configs/YTDLP/Subscriptions-Playlists.txt

~/.local/bin/ytdlp --match-filter "!is_live" $twitch_following --config-locations ~/Configs/YTDLP/twitch-following-480p.conf --playlist-end 2 --lazy-playlist --dateafter now-3days --max-downloads 1 > /dev/null 2>&1&
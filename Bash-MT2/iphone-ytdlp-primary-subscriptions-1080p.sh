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

~/.local/bin/ytdlp --match-filter "!was_live & original_url!*=/shorts/" $primary_subscriptions --config-locations ~/Configs/YTDLP/video-1080p.conf --playlist-end 1 --lazy-playlist --dateafter now-3days > /dev/null 2>&1&
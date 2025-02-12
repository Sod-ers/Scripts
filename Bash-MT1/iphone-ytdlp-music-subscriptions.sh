#!/bin/bash

source ~/.env

scp $MT2:~/Configs/YTDLP/watch-history.txt ~/Configs/YTDLP/mt2-watch-history.txt 2> /dev/null

cat ~/Configs/YTDLP/mt2-watch-history.txt >> ~/Configs/YTDLP/watch-history-unsynced.txt

cat ~/Configs/YTDLP/watch-history.txt >> ~/Configs/YTDLP/watch-history-unsynced.txt

awk '!seen[$0]++' ~/Configs/YTDLP/watch-history-unsynced.txt > ~/Configs/YTDLP/watch-history.txt

echo " " > ~/Configs/YTDLP/watch-history-unsynced.txt

scp ~/Configs/YTDLP/watch-history.txt $MT2:~/Configs/YTDLP/watch-history.txt 2> /dev/null

source ~/Configs/YTDLP/Subscriptions-Playlists.txt

~/.local/bin/ytdlp --match-filter "!is_live & original_url!*=/shorts/" $music_subscriptions --config-locations ~/Configs/YTDLP/video-1080p.conf --playlist-end 1 --lazy-playlist --dateafter now-3days > /dev/null 2>&1&

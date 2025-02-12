#!/bin/bash

source ~/.env

scp $MT2:~/Configs/YTDLP/watch-history.txt ~/Configs/YTDLP/mt2-watch-history.txt 2> /dev/null

cat ~/Configs/YTDLP/mt2-watch-history.txt >> ~/Configs/YTDLP/watch-history-unsynced.txt

cat ~/Configs/YTDLP/watch-history.txt >> ~/Configs/YTDLP/watch-history-unsynced.txt

awk '!seen[$0]++' ~/Configs/YTDLP/watch-history-unsynced.txt > ~/Configs/YTDLP/watch-history.txt

echo " " > ~/Configs/YTDLP/watch-history-unsynced.txt

scp ~/Configs/YTDLP/watch-history.txt $MT2:~/Configs/YTDLP/watch-history.txt 2> /dev/null

source ~/Configs/YTDLP/Subscriptions-Playlists.txt

~/.local/bin/ytdlp-twitch-following --match-filter "!is_live" $twitch_bedtime --config-locations ~/Configs/YTDLP/twitch-following-1080p.conf --playlist-end 2 --lazy-playlist --dateafter now-3days --max-downloads 1 > /dev/null 2>&1&
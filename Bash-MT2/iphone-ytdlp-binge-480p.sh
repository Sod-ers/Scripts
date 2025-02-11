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

~/.local/bin/ytdlp $secondary_playlist --config-locations ~/Configs/YTDLP/playlist-480p.conf --playlist-random --max-downloads 10 > /dev/null 2>&1&
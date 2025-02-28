#!/bin/bash

source ~/.env

binge_playlist_url=$(cat ~/Configs/YTDLP/binge-playlist-url.txt)

scp $MT1:~/Configs/YTDLP/watch-history.txt /tmp/YTDLP/watch-history-2.txt 2> /dev/null

cat /tmp/YTDLP/watch-history-2.txt >> /tmp/YTDLP/watch-history-unsynced.txt

cat ~/Configs/YTDLP/watch-history.txt >> /tmp/YTDLP/watch-history-unsynced.txt

awk '!seen[$0]++' /tmp/YTDLP/watch-history-unsynced.txt > ~/Configs/YTDLP/watch-history.txt

echo " " > /tmp/YTDLP/watch-history-unsynced.txt

scp ~/Configs/YTDLP/watch-history.txt $MT1:~/Configs/YTDLP/watch-history.txt 2> /dev/null

cp ~/Configs/YTDLP/watch-history.txt ~/Configs/YTDLP/Backup/watch-history.txt

~/Scripts/delete-empty-media-directories.sh && ~/Scripts/delete-empty-media-directories-2.sh

~/.local/bin/ytdlp --match-filter '!was_live & original_url!*=/shorts/' $binge_playlist_url --config-locations ~/Configs/YTDLP/youtube-video-1080p.conf --playlist-random --max-downloads 10 --download-archive ~/Configs/YTDLP/watch-history.txt > /dev/null 2>&1&

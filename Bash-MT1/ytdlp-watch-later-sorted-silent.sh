#!/bin/bash

source ~/.env

scp $MT1:~/Configs/YTDLP/watch-later-playlist-url.txt /tmp/YTDLP/watch-later-playlist-url-2.txt

if [[ /tmp/YTDLP/watch-later-playlist-url-2.txt -nt ~/Configs/YTDLP/watch-later-playlist-url.txt ]]; then
cp /tmp/YTDLP/watch-later-playlist-url-2.txt ~/Configs/YTDLP/watch-later-playlist-url.txt
fi

watch_later_playlist_url=$(cat ~/Configs/YTDLP/watch-later-playlist-url.txt)

scp $MT2:~/Configs/YTDLP/watch-history.txt /tmp/YTDLP/watch-history-2.txt 2> /dev/null

cat /tmp/YTDLP/watch-history-2.txt >> /tmp/YTDLP/watch-history-unsynced.txt

cat ~/Configs/YTDLP/watch-history.txt >> /tmp/YTDLP/watch-history-unsynced.txt

awk '!seen[$0]++' /tmp/YTDLP/watch-history-unsynced.txt > ~/Configs/YTDLP/watch-history.txt

echo " " > /tmp/YTDLP/watch-history-unsynced.txt

scp ~/Configs/YTDLP/watch-history.txt $MT2:~/Configs/YTDLP/watch-history.txt 2> /dev/null

cp ~/Configs/YTDLP/watch-history.txt ~/Configs/YTDLP/Backup/watch-history.txt

~/Scripts/delete-empty-media-directories.sh && ~/Scripts/delete-empty-media-directories-2.sh

~/.local/bin/ytdlp --match-filter '!was_live & original_url!*=/shorts/' $watch_later_playlist_url --config-locations ~/Configs/YTDLP/youtube-video-1080p.conf --lazy-playlist --max-downloads 5 --sponsorblock-remove sponsor,selfpromo --js-runtimes deno:/home/soders/.deno/bin/deno --sleep-interval 60 --max-sleep-interval 120 --download-archive ~/Configs/YTDLP/watch-history.txt > /dev/null 2>&1&

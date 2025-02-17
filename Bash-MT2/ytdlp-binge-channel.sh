#!/bin/bash

source ~/.env

binge_channel_url=$(cat ~/Configs/YTDLP/binge-channel-url.txt)

scp $MT1:~/Configs/YTDLP/watch-history.txt /tmp/YTDLP/watch-history-2.txt 2> /dev/null

cat /tmp/YTDLP/watch-history-2.txt >> /tmp/YTDLP/watch-history-unsynced.txt

cat ~/Configs/YTDLP/watch-history.txt >> /tmp/YTDLP/watch-history-unsynced.txt

awk '!seen[$0]++' /tmp/YTDLP/watch-history-unsynced.txt > ~/Configs/YTDLP/watch-history.txt

echo " " > /tmp/YTDLP/watch-history-unsynced.txt

scp ~/Configs/YTDLP/watch-history.txt $MT1:~/Configs/YTDLP/watch-history.txt 2> /dev/null

cp ~/Configs/YTDLP/watch-history.txt ~/Configs/YTDLP/Backup/watch-history.txt

~/Scripts/delete-empty-media-directories.sh && ~/Scripts/delete-empty-media-directories-2.sh

~/.local/bin/ytdlp --match-filter "!was_live & original_url!*=/shorts/" $binge_channel_url --config-locations ~/Configs/YTDLP/youtube-video-1080p.conf --lazy-playlist --max-downloads 10 > /dev/null 2>&1&

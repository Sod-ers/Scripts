#!/bin/bash

source ~/.env

mkdir /tmp/YTDLP/ 2> /dev/null
touch /tmp/YTDLP/Automation-Validator.txt

echo "Disabled" > /tmp/YTDLP/Automation-Validator.txt

diff --brief <(sort ~/Configs/YTDLP/Automation-Status.txt) <(sort /tmp/YTDLP/Automation-Validator.txt) >/dev/null
comp_value=$?

if [ $comp_value -eq 1 ]
then
scp $MT1:~/Configs/YTDLP/watch-history.txt /tmp/YTDLP/watch-history-2.txt
if [ $? -eq 0 ]; then
cat /tmp/YTDLP/watch-history-2.txt >> /tmp/YTDLP/watch-history-unsynced.txt

cat ~/Configs/YTDLP/watch-history.txt >> /tmp/YTDLP/watch-history-unsynced.txt

awk '!seen[$0]++' /tmp/YTDLP/watch-history-unsynced.txt > ~/Configs/YTDLP/watch-history.txt

echo " " > /tmp/YTDLP/watch-history-unsynced.txt

scp ~/Configs/YTDLP/watch-history.txt $MT1:~/Configs/YTDLP/watch-history.txt

else
echo " "
fi

cp ~/Configs/YTDLP/watch-history.txt ~/Configs/YTDLP/Backup/watch-history.txt

~/.local/bin/ytdlp --match-filter '!was_live & original_url!*=/shorts/' -a ~/Configs/YTDLP/youtube-channel-urls.txt --config-locations ~/Configs/YTDLP/youtube-video-1080p.conf --playlist-end 1 --lazy-playlist --dateafter now-3days --max-downloads 5 --sponsorblock-remove sponsor,selfpromo --download-archive ~/Configs/YTDLP/watch-history.txt
~/Scripts/delete-empty-media-directories.sh && ~/Scripts/delete-empty-media-directories-2.sh
~/Scripts/completion-chime.sh && sleep 1
else
echo " "
fi

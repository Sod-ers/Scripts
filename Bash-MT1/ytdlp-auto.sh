#!/bin/bash

source ~/.env

mkdir /tmp/YTDLP/ 2> /dev/null
touch /tmp/YTDLP/Automation-Validator.txt

echo "Disabled" > /tmp/YTDLP/Automation-Validator.txt

diff --brief <(sort ~/Configs/YTDLP/Automation-Status.txt) <(sort /tmp/YTDLP/Automation-Validator.txt) >/dev/null
comp_value=$?

~/.local/bin/ytdlp --match-filter "!was_live & original_url!*=/shorts/" -a ~/Configs/YTDLP/youtube-channel-urls.txt --config-locations ~/Configs/YTDLP/youtube-video-1080p.conf --playlist-end 1 --lazy-playlist --dateafter now-3days --sleep-interval 60 --max-sleep-interval 120 --sponsorblock-remove sponsor,selfpromo --download-archive ~/Configs/YTDLP/watch-history.txt
~/Scripts/delete-empty-media-directories.sh && ~/Scripts/delete-empty-media-directories-2.sh
~/Scripts/completion-chime.sh && sleep 1
else
echo " "
fi

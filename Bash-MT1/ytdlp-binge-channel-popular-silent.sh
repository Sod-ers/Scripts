#!/bin/bash

~/Scripts/delete-empty-media-directories.sh && ~/Scripts/delete-empty-media-directories-2.sh

~/.local/bin/ytdlp --match-filter '!was_live & original_url!*=/shorts/' -a ~/Configs/YTDLP/youtube-channel-sorted-popular.txt --config-locations ~/Configs/YTDLP/youtube-video-1080p.conf --lazy-playlist --max-downloads 5 --sponsorblock-remove sponsor,selfpromo --sleep-interval 60 --max-sleep-interval 120 --js-runtimes deno:/home/soders/.deno/bin/deno --download-archive ~/Configs/YTDLP/watch-history.txt > /dev/null 2>&1&

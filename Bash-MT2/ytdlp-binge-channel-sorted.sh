#!/bin/bash

source ~/.env

binge_channel_url=$(cat ~/Configs/YTDLP/binge-channel-url.txt)

~/Scripts/delete-empty-media-directories.sh && ~/Scripts/delete-empty-media-directories-2.sh

~/.local/bin/ytdlp --match-filter '!was_live & original_url!*=/shorts/' $binge_channel_url --config-locations ~/Configs/YTDLP/youtube-video-1080p.conf --lazy-playlist --max-downloads 5 --sponsorblock-remove sponsor,selfpromo --download-archive ~/Configs/YTDLP/watch-history.txt > /dev/null 2>&1&

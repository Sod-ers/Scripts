#!/bin/bash

~/Scripts/delete-empty-media-directories.sh && ~/Scripts/delete-empty-media-directories-2.sh

~/.local/bin/ytdlp --match-filter "!was_live & original_url!*=/shorts/" -a ~/Configs/YTDLP/youtube-channel-urls.txt --config-locations ~/Configs/YTDLP/youtube-video-1080p.conf --playlist-end 1 --lazy-playlist --dateafter now-3days --max-downloads 5 --sponsorblock-remove sponsor,selfpromo --download-archive ~/Configs/YTDLP/watch-history.txt > /dev/null 2>&1&

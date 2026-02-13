#!/bin/bash

touch ~/Configs/YTDLP/youtube-channel-sorted-popular.txt
link=$(cat)
echo $link > ~/Configs/YTDLP/binge-channel-url.txt
~/.local/bin/ytdlp --dump-json --flat-playlist \
"$link" |\
jq -r -s 'sort_by(-.view_count) | .[:300] | .[] | .url' > ~/Configs/YTDLP/youtube-channel-sorted-popular.txt
if [ ! -s ~/Configs/YTDLP/youtube-channel-sorted-popular.txt ]; then
echo fail
else
echo success
fi

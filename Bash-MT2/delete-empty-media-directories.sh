#!/bin/bash

rm -rf ~/Videos/YouTube/Soders/*
find "/home/soders/Jellyfin Server Media/YouTube/" -type d -empty -delete
find "/home/soders/Jellyfin Server Media/Twitch/" -type d -empty -delete
find "/home/soders/Jellyfin Server Media/Shows/" -type d -empty -delete
find "/home/soders/Jellyfin Server Media/Movies/" -type d -empty -delete
find "/home/soders/Jellyfin Server Media/Other Shows/" -type d -empty -delete
find "/home/soders/Jellyfin Server Media/Other Movies/" -type d -empty -delete

find ~/Videos/YouTube/ -mindepth 1 -type d |
while read empty
do
find "$empty" -mindepth 1    -type d | read && continue
find "$empty" -iname '*.mp4' -type f | read && continue
rm -r "$empty"
done
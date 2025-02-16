#!/bin/bash

rm -rf ~/Videos/YouTube/Soders/*
find "/home/soders/Jellyfin Server Media/YouTube/" -type d -empty -delete
find "/home/soders/Jellyfin Server Media/Twitch/" -type d -empty -delete
find "/home/soders/Jellyfin Server Media/Shows/" -type d -empty -delete
find "/home/soders/Jellyfin Server Media/Movies/" -type d -empty -delete
find "/home/soders/Jellyfin Server Media/Other Shows/" -type d -empty -delete
find "/home/soders/Jellyfin Server Media/Other Movies/" -type d -empty -delete

~/Scripts/delete-empty-media-directories-2.sh

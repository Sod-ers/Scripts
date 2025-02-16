#!/bin/bash

link=$(cat)
~/.local/bin/ytdlp $link --config-locations ~/Configs/YTDLP/tiktok.conf > /dev/null 2>&1&
rm /mnt/Peppermint/Vault/TikTok/*/*.mp3 > /dev/null 2>&1&
rm /mnt/Peppermint/Vault/TikTok/*/*.m4a > /dev/null 2>&1&
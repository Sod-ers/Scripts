#!/bin/bash

source ~/Configs/spotDL/.env

cd ~/Music/Playlists/
# cp ~/Configs/spotDL/windows-playlist.json ~/.spotdl/config.json
# ~/.local/bin/spotdl download $spotify_playlists --m3u "{list} - Windows"
# cp ~/Configs/spotDL/linux-playlist.json ~/.spotdl/config.json
# ~/.local/bin/spotdl download $spotify_playlists --m3u "{list} - Linux"
cp ~/Configs/spotDL/foobar-playlist.json ~/.spotdl/config.json
~/.local/bin/spotdl download $spotify_playlists --m3u "{list} - Foobar"

cp ~/Configs/spotDL/liked-songs.json ~/.spotdl/config.json
~/.local/bin/spotdl download saved --user-auth
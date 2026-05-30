#!/bin/bash

flatpak kill com.github.iwalton3.jellyfin-mpv-shim
pkill mpv
pkill mkchromecast
pulseaudio -k

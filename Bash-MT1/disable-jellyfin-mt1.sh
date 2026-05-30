#!/bin/bash

nohup pkill jellyfin > /dev/null 2>&1&
flatpak kill com.github.iwalton3.jellyfin-mpv-shim > /dev/null 2>&1& exit

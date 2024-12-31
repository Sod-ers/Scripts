#!/bin/bash

echo Shutting down Radarr, Sonarr, Lidarr, Readarr, Prowlarr, Jellyseerr, and Flaresolverr...

sudo systemctl stop lidarr
sudo systemctl stop radarr
sudo systemctl stop sonarr
sudo systemctl stop readarr
sudo systemctl stop prowlarr
sudo systemctl stop jellyseerr
nohup pkill flaresolverr
exit

#!/bin/bash

echo Authenticate to enable Radarr, Sonarr, Lidarr, Readarr, Prowlarr, Jellyseerr, and Flaresolverr...

nohup /home/soders/Programs/Flaresolverr/flaresolverr > /dev/null 2>&1&

sudo systemctl start lidarr
sudo systemctl start radarr
sudo systemctl start sonarr
sudo systemctl start readarr
sudo systemctl start prowlarr
sudo systemctl start jellyseerr

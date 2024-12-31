#!/bin/bash

echo Shutting down Radarr, Sonarr, and Jellyseerr...

sudo systemctl stop radarr
sudo systemctl stop sonarr
sudo systemctl stop jellyseerr

exit
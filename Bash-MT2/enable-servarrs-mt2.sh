#!/bin/bash

echo Starting Radarr, Sonarr, and Jellyseerr...

sudo systemctl start radarr
sudo systemctl start sonarr
sudo systemctl start jellyseerr
exit
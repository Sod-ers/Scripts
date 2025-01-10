#!/bin/bash

source /home/soders/.env

source /home/soders/Configs/spotDL/.env

cp /home/soders/Configs/spotDL/Liked-Songs/config.json /home/soders/.spotdl/config.json
/home/soders/.local/bin/spotdl-app download saved --user-auth > /dev/null 2>&1&

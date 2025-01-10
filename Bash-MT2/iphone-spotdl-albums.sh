#!/bin/bash

source /home/soders/.env

source /home/soders/Configs/spotDL/.env

cp /home/soders/Configs/spotDL/Saved-Albums/config.json /home/soders/.spotdl/config.json
/home/soders/.local/bin/spotdl-app download all-user-saved-albums --user-auth > /dev/null 2>&1&

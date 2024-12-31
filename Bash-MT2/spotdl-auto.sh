#!/bin/bash

cp /home/soders/Configs/spotDL/First-Listen/config.json /home/soders/.spotdl/config.json
/home/soders/.local/bin/spotdl-app download all-user-saved-albums --user-auth

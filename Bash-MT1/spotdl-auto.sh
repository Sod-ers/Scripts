#!/bin/bash

cp /home/soders/Configs/spotDL/Liked-Songs/config.json /home/soders/.spotdl/config.json
/home/soders/.local/bin/spotdl-app download saved --user-auth

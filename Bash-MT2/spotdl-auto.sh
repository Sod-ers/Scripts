#!/bin/bash

cp ~/Configs/spotDL/first-listen.json ~/.spotdl/config.json
~/.local/bin/spotdl-app download all-user-saved-albums --user-auth

#!/bin/bash

cp ~/Configs/spotDL/first-listen.json ~/.spotdl/config.json
~/.local/bin/spotdl download all-user-saved-albums --user-auth > /dev/null 2>&1&

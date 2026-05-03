#!/bin/bash

# YTDLP
~/.local/bin/ytdlp -U > /dev/null 2>&1&

# Deno
~/.deno/bin/deno upgrade stable > /dev/null 2>&1&

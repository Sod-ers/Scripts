#!/bin/bash

# YTDLP
echo -e "${YELLOW}Updating YTDLP..${NC}"
~/.local/bin/ytdlp -U
# pip install --upgrade yt-dlp
echo -e "${GREEN}YTDLP finished!${NC}"

# Deno
echo -e "${YELLOW}Updating Deno..${NC}"
~/.deno/bin/deno upgrade stable
echo -e "${GREEN}Deno finished!${NC}"

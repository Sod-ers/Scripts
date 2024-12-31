#!/bin/bash

process() {
while read input; do
  case "$input" in
    UNBLANK*)	/home/soders/Scripts/unlock.sh ;;
    BLANK*)	/home/soders/Scripts/deckmaster-lock.sh ;;
  esac
done
}

/usr/bin/xscreensaver-command -watch | process
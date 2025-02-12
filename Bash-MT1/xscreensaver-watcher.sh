#!/bin/bash

process() {
while read input; do
  case "$input" in
    UNBLANK*)	~/Scripts/unlock.sh ;;
    BLANK*)	~/Scripts/deckmaster-lock.sh ;;
  esac
done
}

/usr/bin/xscreensaver-command -watch | process
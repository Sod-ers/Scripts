#!/bin/bash

# Collect all sinks
sinkList=$(pactl list sinks | tr '\n' '\r' | perl -pe 's/Sink #([0-9]+).+?device\.description = "([^\r]+)"\r.+?(?=Sink #|$)/\1:"\2",/g' | tr '\r' '\n')
IFS="," read -a sinksArray <<< "$sinkList"

# Is our simultaneous sink available? → Use for loop with indexes to handle spaces in names
for ((i = 0; i < ${#sinksArray[@]}; i++)); do
  sink="${sinksArray[$i]}"
  echo "sink found: $sink"

  # Search for output devices name
  [[ "$sink" =~ "Mkchromecast" ]] && simultaneous=$(echo $sink | cut -d':' -f1)
done

if [[ $simultaneous ]]; then
  echo "simultaneous sink has index $simultaneous"

  # Collect all sound streams
  musicSourcesList=$(pactl list sink-inputs | tr '\n' '\r' | perl -pe 's/Sink Input #([0-9]+).+?application\.process\.binary = "([^\r]+)"\r.+?(?=Sink Input #|$)/\1:\2\r/g' | tr '\r' '\n')

  for soundSource in $musicSourcesList; do
    binary=$(echo $soundSource | cut -d':' -f2);
    index=$(echo $soundSource | cut -d':' -f1);
    echo "index: $index, binary: $binary";

    # Add programs here
    if [[ "$binary" == "mpv" ]]; then
      echo "moving mpv output to $simultaneous"
      pactl move-sink-input $index $simultaneous
    fi
  done
else
  echo "simultaneous sink was not found"
fi

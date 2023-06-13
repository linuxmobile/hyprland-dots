#!/bin/bash

summary="$2"
body="$3"
if [[ "$1" == 'Spotify' ]]; then
echo | python scripts/spotify
else

   echo "$summary $body" | espeak
fi

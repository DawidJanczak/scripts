#!/bin/bash

test -z $1 && echo "need magnet link!" && exit -1

# the file should define HOST, PORT, USER and PASS variables
source $HOME/scripts/transmission_config

LINK=$1
PAUSED="false"

SESSID=$(curl --silent --anyauth --user $USER:$PASS "http://$HOST:$PORT/transmission/rpc" | sed 's/.*<code>//g;s/<\/code>.*//g')

curl --silent --anyauth --user $USER:$PASS \
  --header "$SESSID" \
  "http://$HOST:$PORT/transmission/rpc/" \
  -d "{\"method\":\"torrent-add\",\"arguments\":{\"paused\":${PAUSED},\"filename\":\"${LINK}\"}}"

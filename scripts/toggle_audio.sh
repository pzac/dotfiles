#!/bin/sh
curr=$(/opt/local/bin/SwitchAudioSource -c)
echo "Current: $curr"

if [[ "$curr" == "MacBook Pro Speakers" ]]; then
  /opt/local/bin/SwitchAudioSource -s "DELL U4021QW"
else
  /opt/local/bin/SwitchAudioSource -s "MacBook Pro Speakers"
fi

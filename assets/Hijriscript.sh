#!/bin/bash

update_net_speed() {
  # Get the Hijri date
  hijr=$(~/nix/assets/hijri)
  # Clean and format the Hijri output for JSON compatibility
  hijr=$(printf '%s' "$hijr" | jq -sRr @uri | sed 's/%20/ /g' | awk -F'%' '{print $1, $2,$3,$4}' | awk '{gsub(/[^a-zA-Z0-9]+/, "", $2); print $1, $2,$3,$4}')
  hijri="Hijri: $hijr"
}

i3status | while :
do
    read line
    update_net_speed
    net_output="[{ \"full_text\": \"${hijri}\" },"
    echo "${line/[/$net_output}" || exit 1
done


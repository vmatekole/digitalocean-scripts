#!/bin/sh
echo "Power On"
echo "Auth ID: $DIGITAL_OCEAN_TOKEN"
echo "Droplet ID: $1"
URL="https://api.digitalocean.com/v2/droplets/$1/actions"
AUTH="Authorization: Bearer $DIGITAL_OCEAN_TOKEN"
curl  -X POST -H 'Content-Type: application/json' -H "$AUTH" -d @power-on.json "$URL"
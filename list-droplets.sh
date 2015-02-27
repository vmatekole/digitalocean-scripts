#!/bin/sh
echo "List all droplets"
echo "Auth ID: $DIGITAL_OCEAN_TOKEN"
URL="https://api.digitalocean.com/v2/droplets/"
AUTH="Authorization: Bearer $DIGITAL_OCEAN_TOKEN"
curl   -H 'Content-Type: application/json' -H "$AUTH" "$URL" | cat - | underscore print
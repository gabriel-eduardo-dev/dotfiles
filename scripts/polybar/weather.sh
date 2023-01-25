#!/bin/sh

KEY=""
CITY=""
UNITS="metric"

API="https://api.openweathermap.org/data/2.5"

location=$(curl -sf "https://location.services.mozilla.com/v1/geolocate?key=geoclue")

location_lat="$(echo "$location" | jq '.location.lat')"
location_lon="$(echo "$location" | jq '.location.lng')"

current=$(curl -sf "$API/weather?appid=$KEY&lat=$location_lat&lon=$location_lon&units=$UNITS")

current_temp=$(echo "$current" | jq ".main.temp" | cut -d "." -f 1)

echo "$current_tempºC"

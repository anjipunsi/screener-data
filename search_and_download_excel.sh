#!/bin/sh

# Set Screener URL and search query
SCREENER_URL=https://www.screener.in/search/
query=Reliance

# Search for Reliance data and download Excel file
curl -X GET \
  $SCREENER_URL \
  -H 'Content-Type: application/json' \
  -d '{"query":"'$query'"}' \
  -o reliance_data.xlsx

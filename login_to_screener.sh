#!/bin/sh

# Set Screener URL and credentials
SCREENER_URL=https://www.screener.in/login/
username=$1
password=$2

# Login to Screener
curl -X POST \
  $SCREENER_URL \
  -H 'Content-Type: application/json' \
  -d '{"email":"'$username'","password":"'$password'"}'

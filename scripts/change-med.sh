#!/bin/bash
TOKEN=BAhJIiViMTg0ZWQzOTM4NGQ0MTA1NDRlZjU3MjI4ZTU0ZmM4MwY6BkVG--2f4626ca536e9c84ff6abe2fe6a506e2e8a79276
ID=2
API="https://peaceful-wave-15988.herokuapp.com"
URL_PATH="/meds"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "med": {

    "id": 2,
    "nickname":"Ice Cream",
    "clinical_name":"Prozac",
    "count":28,
    "user_id":1
  }
}'

echo

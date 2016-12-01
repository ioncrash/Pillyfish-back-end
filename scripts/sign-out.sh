#!/bin/bash
ID="1"
API="https://peaceful-wave-15988.herokuapp.com"
URL_PATH="/sign-out"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiUwNDE4MDczMTQ1ZTdlZDVkNzFmZDczZmViYjgzM2U0ZgY6BkVG--c0ac98ceb1f9e815381910c671e17a5c15a83875"

echo

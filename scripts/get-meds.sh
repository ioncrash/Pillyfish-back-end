#!/bin/bash

API="https://peaceful-wave-15988.herokuapp.com"
URL_PATH="/meds"
curl "${API}${URL_PATH}/" \
  --include \
  --request GET \
  --header "Authorization: Token token=BAhJIiUwNDE4MDczMTQ1ZTdlZDVkNzFmZDczZmViYjgzM2U0ZgY6BkVG--c0ac98ceb1f9e815381910c671e17a5c15a83875" \
  --header "Content-Type: application/json"

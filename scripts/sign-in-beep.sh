API="https://peaceful-wave-15988.herokuapp.com"
URL_PATH="/sign-in"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "beep@thing.com",
      "password": "beep"
    }
  }'

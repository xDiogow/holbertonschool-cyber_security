#!/bin/bash

ids=(
  b9944e31a3ed4d71acb006dc32b36bef
  eb31eaf904ee41d99470f60c35e35fe8
  28eca35608fc4de7840d65e1cd701857
  11f3266583c34051bba8806ab74bfb53
  5ecb358731444cd18d78df38ab6018f3
  3dffcd4df9ae4e9db7e14cec1010c659
  b49d4f71a4ca4e1ea314ed37da6cf1e0
  5a3aa7a530a44254b12e56a876797db3
  9e6f86781523425e9b5b3e13955cae7f
  07513cc4544d4529925bab2cbd55c2f6
  6bde9fbb2c04407893ec7481682a22d8
  ed641ac67e0645afba8e2b8276f88c64
  db5598c841e240b9a09fad3ed2a5439a
  10f5efba2bad4f5abf1050a18dd5a0e6
  f55b6aa23eed4573835a1e6f31f0f191
  11a32ec5d25e4c7aa839914deded609b
  9c662bfc36914ee39a5deab277c0b193
  925e490702c94c45a644fa5ee121dab0
)

for id in "${ids[@]}"; do
  #echo "Querying account_id: $id"
  curl -s 'http://web0x06.hbtn/api/accounts/info' \
    -X POST \
    -H 'Content-Type: application/json' \
    -H 'Cookie: session=byZFF-GmTu5avcQIhOnDyZ9RO1T-c2dl-LWkF5v9U3g.PqEnCJNEpM_WUjOrt_aExw0cyEY' \
    --data-raw "{\"accounts_id\":[\"$id\"]}" | jq
done

#!/bin/bash

decoded=$(echo -n "${1#\{xor\}}" | base64 -d)

output=""
for (( i=0; i<${#decoded}; i++ )); do
  char="${decoded:i:1}"
  xor_result=$(( $(printf "%d" "'$char") ^ 95 ))
  output+=$(printf "\\$(printf '%03o' "$xor_result")")
done

echo "$output"

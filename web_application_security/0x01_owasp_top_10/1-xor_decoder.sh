#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: ./1-xor_decoder.sh {xor}encoded_string"
  exit 1
fi

# strip the marker and decode
encoded=${1#\{xor\}}
decoded=$(echo -n "$encoded" | base64 -d 2>/dev/null)
if [ $? -ne 0 ]; then
  echo "Error: Invalid Base64 input."
  exit 1
fi

key=95

# convert to hex, XOR each byte in hex-space, then back to binary
hex=$(printf "%s" "$decoded" | xxd -p)
xor_hex=$(printf "%s\n" 

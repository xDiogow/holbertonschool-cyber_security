#!/bin/bash
hash=$(md5sum "$1" | awk '{print $1}')
if [ "$hash" == "$2" ]; then
  echo "$1: OK"
fi
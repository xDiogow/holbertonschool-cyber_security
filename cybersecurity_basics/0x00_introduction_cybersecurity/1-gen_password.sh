#!/bin/bash
cat /dev/urandom | head -c "$1" | base64 | tr -dc 'A-Za-z0-9' | head -c "$1"
#!/bin/bash
cat /dev/urandom | base64 | tr -dc 'A-Za-z0-9' | head -c "$1"
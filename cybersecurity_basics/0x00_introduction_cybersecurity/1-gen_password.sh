#!/bin/bash
cat /dev/urandom | base64 | head -c "$1"
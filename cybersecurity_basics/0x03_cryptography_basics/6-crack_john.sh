#!/bin/bash
john --wordlist=/usr/share/wordlists/rockyou.txt --format=raw-sha256 "$1" && john --show --format=raw-sha256 "$1" | cut -d':' -f2 | grep -v '^$' > 6-password.txt

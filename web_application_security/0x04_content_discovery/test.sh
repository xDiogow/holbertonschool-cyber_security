#!/bin/bash

domain="web0x04.hbtn"
wordlist="/home/diogo/Desktop/Tools/gobuster/wordlists/dns_wordlist.txt"  # Replace with your actual file name

while read -r sub; do
    full="$sub.$domain"
    ip=$(dig +short "$full" | head -n 1)

    if [[ -n "$ip" ]]; then
        echo "[FOUND] $full -> $ip"
    else
        echo "[----] $full"
    fi
done < "$wordlist"


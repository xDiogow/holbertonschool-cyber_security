#!/bin/bash

domain="$1"
output_file="${domain}.csv"

whois "$domain" | awk -F ': +' '
    BEGIN { OFS = "," }
    /^Registrant / || /^Admin / || /^Tech / {
        gsub(/ /, ",", $1)  # Replace spaces in field names with commas
        print $1, $2
    }
' > "$output_file"

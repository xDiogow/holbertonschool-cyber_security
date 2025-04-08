#!/bin/bash
whois "$1" | awk -F ': +' 'BEGIN{OFS=","}/^Registrant |^Admin |^Tech /{gsub(/ /,",",$1);print $1,$2}' > "${1}.csv"

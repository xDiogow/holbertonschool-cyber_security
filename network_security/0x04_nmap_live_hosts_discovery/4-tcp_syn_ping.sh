#!/bin/bash
nmap -sS -p 22,80,443 $1

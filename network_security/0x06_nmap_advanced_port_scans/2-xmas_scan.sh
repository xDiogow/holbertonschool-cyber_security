#!/bin/bash
sudo nmap -sX -p440-450 --open --reason --packet-trace $1

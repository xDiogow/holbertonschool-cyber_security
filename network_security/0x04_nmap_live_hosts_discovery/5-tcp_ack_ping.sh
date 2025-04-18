#!/bin/bash
sudo nmap -sA -PS22,80,443 $1

#!/bin/bash
ps aux -U $1 --no-headers | grep -vE '[[:space:]]0[[:space:]]+0$'
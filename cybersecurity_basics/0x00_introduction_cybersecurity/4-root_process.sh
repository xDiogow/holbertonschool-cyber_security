#!/bin/bash
ps aux -U $1 | grep -vE '[[:space:]]0[[:space:]]+0$'
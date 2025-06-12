#!/bin/bash
echo -n $1 | sha256sum | awk '{print $1}' > 3_hash.txt

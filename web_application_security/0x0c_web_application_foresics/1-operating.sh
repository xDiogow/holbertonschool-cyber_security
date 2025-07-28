#!/bin/bash
grep -m1 "Linux version" dmesg | sed -n 's/.*(\(Ubuntu [^)]*\)).*/\1/p'
grep -m1 "Linux version" dmesg | sed -n 's/.*gcc version [^(]*(\([^)]*\)).*/\1/p'

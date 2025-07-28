#!/bin/bash
grep "Accepted password" auth.log | awk '{print $9}' | sort | uniq

#!/bin/bash
tac auth.log | head -n 1000 | awk '/Failed password/ {fail[$NF]++} /Accepted password/ {success[$NF]++}
END {
  for (user in success) {
    if (fail[user] > 5) print user;
  }
}' | sort | uniq


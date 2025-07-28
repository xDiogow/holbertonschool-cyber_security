#!/bin/bash
awk '
/Failed password/ {
  for (i = 1; i < NF; i++) if ($i == "from") fail[$(i+1)]++
}
/Accepted password/ {
  for (i = 1; i < NF; i++) if ($i == "from") success[$(i+1)]++
}
END {
  for (ip in success) {
    if (fail[ip]) {
      count++
    }
  }
  print count
}' auth.log

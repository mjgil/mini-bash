#!/usr/bin/env bash

# use gsort (GNU sort) on macOS if available (brew install coreutils), else fall back to sort
if command -v gsort &>/dev/null; then
  SORT="gsort"
else
  SORT="sort"
fi

df -h | awk '$2 ~ /G|S|T/ { print $0 }' | { IFS= read -r header; echo "$header"; $SORT -rh -k2; }

#!/usr/bin/env bash

# use gsort (GNU sort) on macOS if available (brew install coreutils), else fall back to sort
if command -v gsort &>/dev/null; then
  SORT="gsort"
else
  SORT="sort"
fi

du -sch -- * | awk '$1 ~ /G$/ { print $0 }' | $SORT -rh
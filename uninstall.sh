#!/usr/bin/env bash

# needs to be ran from root mini-bash directory
for i in scripts/*.sh; do
  # echo "$(pwd)/$i"
  scriptname=${i##scripts/}
  basename=${scriptname%%.sh}
  echo "removing link $(pwd)/$i -> /usr/bin/$basename"
  sudo rm /usr/bin/$basename
done
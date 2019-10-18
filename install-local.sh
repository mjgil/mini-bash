#!/usr/bin/env bash

# needs to be ran from root mini-bash directory
for i in scripts/*.sh; do
  # echo "$(pwd)/$i"
  scriptname=${i##scripts/}
  basename=${scriptname%%.sh}
  echo "linking $(pwd)/$i to /usr/bin/$basename"
  sudo ln -s "$(pwd)/$i" /usr/bin/$basename
done
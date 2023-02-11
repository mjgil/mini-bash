#!/usr/bin/env bash

dir_name=/usr/local/bin

# needs to be ran from root mini-bash directory
for i in scripts/*.sh; do
  # echo "$(pwd)/$i"
  scriptname=${i##scripts/}
  basename=${scriptname%%.sh}
  echo "removing link $(pwd)/$i -> $dir_name/$basename"
  sudo rm $dir_name/$basename
done
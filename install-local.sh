#!/usr/bin/env bash

dir_name=/usr/local/bin

# needs to be ran from root mini-bash directory
for i in scripts/*.sh; do
  # echo "$(pwd)/$i"
  scriptname=${i##scripts/}
  basename=${scriptname%%.sh}
  echo "linking $(pwd)/$i to $dir_name/$basename"
  sudo ln -s "$(pwd)/$i" $dir_name/$basename
done
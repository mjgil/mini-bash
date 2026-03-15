#!/usr/bin/env bash

if ! [ -x "$(command -v unzip)" ]; then
  if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install unzip
  else
    sudo apt-get install unzip
  fi
fi

rm -rf mini-bash-master
curl -fsSL -o master.zip https://github.com/mjgil/mini-bash/archive/master.zip
unzip master.zip
cd mini-bash-master

./reset.sh

cd ../
rm master.zip

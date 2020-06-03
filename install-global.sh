#!/usr/bin/env bash

if ! [ -x "$(command -v unzip)" ]; then
  sudo apt-get install unzip
fi

wget https://github.com/mjgil/mini-bash/archive/master.zip
unzip master.zip
cd mini-bash-master

./reset.sh

cd ../
rm master.zip

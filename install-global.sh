#!/usr/bin/env bash

wget https://github.com/mjgil/mini-bash/archive/master.zip
unzip master.zip
cd mini-bash-master

./install-local.sh

cd ../
rm master.zip
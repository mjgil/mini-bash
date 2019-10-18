#!/usr/bin/env bash

target=${1%/}
zip -r $target.zip $target
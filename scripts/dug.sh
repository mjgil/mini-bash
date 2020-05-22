#!/usr/bin/env bash

du -sch * | awk '$1 ~ /G/ { print $0 }' | sort -rg
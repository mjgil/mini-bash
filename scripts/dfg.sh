#!/usr/bin/env bash

df -h | awk '$2 ~ /G|S|T/ { print $0 }' | (sed -u 1q; sort -rh -k2)

#!/usr/bin/env bash

df -h | awk '$2 ~ /G|S/ { print $0 }' | sort -h -k2
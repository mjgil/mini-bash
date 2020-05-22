#!/usr/bin/env bash

du -sch * | awk '$1 ~ /[0-9][0-9][0-9]M/ { print $0 }' | sort -rg
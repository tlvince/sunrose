#!/bin/dash
# sunrose: generic theme switcher.
# Copyright 2012 Tom Vincent <http://tlvince.com/contact>

modules="${modules:-sunrose.d}"

usage() { echo "[module=/path/to/sunrose.d] $0 light||dark"; }

[ "$1" ] || { usage && exit 1; }

# $1 - String: 'light' or 'dark'
if [ -d "$modules" ]; then
  for module in $modules/*.sh; do
    if [ -r "$module" ] && grep --quiet "$1()" "$module"; then
      # Source in a sub shell to clear previous module
      "${SHELL:-/bin/sh}" -c ". $module && $1"
    fi
  done
fi
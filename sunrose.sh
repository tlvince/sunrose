#!/bin/dash
# sunrose: generic theme switcher.
# Copyright 2012 Tom Vincent <http://tlvince.com/contact>

modules="${modules:-sunrose.d}"

# $1 - String: 'light' or 'dark'
[ -d "$modules" ] && {
  for module in $modules/*.sh; do
    [ -r "$module" ] && . "$module" && "$1"
  done
}

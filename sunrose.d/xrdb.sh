#!/bin/sh

config="${XDG_CONFIG_HOME:-$HOME/.config}/sunrose/xrdb"
[ -f "$config" ] && source "$config" || exit 1

switch() {
  sed -i "$1" "$xresources"
  xrdb -load "$xresources"
}

light() { switch "s|$dark|$light|"; }
dark()  { switch "s|$light|$dark|"; }

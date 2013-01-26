#!/bin/sh

config="${XDG_CONFIG_HOME:-$HOME/.config}/sunrose/dmenu"
[ -f "$config" ] && source "$config" || exit 1

switch() { sed -i "$1" "$dmenurc"; }
light() { switch "s|$dark|$light|"; }
dark()  { switch "s|$light|$dark|"; }

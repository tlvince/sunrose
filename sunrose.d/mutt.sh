#!/bin/sh

config="${XDG_CONFIG_HOME:-$HOME/.config}/sunrose/mutt"
[ -f "$config" ] && source "$config" || exit 1

switch() { sed -i "$1" "$muttrc"; }
light() { switch "s|$dark|$light|"; }
dark()  { switch "s|$light|$dark|"; }

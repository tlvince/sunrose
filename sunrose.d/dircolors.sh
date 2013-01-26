#!/bin/sh

config="${XDG_CONFIG_HOME:-$HOME/.config}/sunrose/dircolors"
[ -f "$config" ] && source "$config" || exit 1

switch() { dircolors -b "$1" > "$dircolors/dircolors"; }
light() { switch "$light"; }
dark()  { switch "$dark"; }

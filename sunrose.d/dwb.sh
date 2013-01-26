#!/bin/sh

config="${XDG_CONFIG_HOME:-$HOME/.config}/sunrose/dwb"
[ -f "$config" ] && source "$config" || exit 1

switch() { cat "$1" > "$userstyle"; }
light() { switch "$light"; }
dark()  { switch "$dark"; }

#!/bin/sh

config="${XDG_CONFIG_HOME:-$HOME/.config}/sunrose/vim"
[ -f "$config" ] && source "$config" || exit 1

switch() { sed -i "s|^set background=$1$|set background=$2|" "$vimrc"; }
light() { switch dark light; }
dark() { switch light dark; }

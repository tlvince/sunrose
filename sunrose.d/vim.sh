#!/bin/sh

config="${XDG_CONFIG_HOME:-$HOME/.config}/sunrose/vim"
[ -f "$config" ] && source "$config" || exit 1

switch() { sed -i "$1" "$vimrc"; }
light() { switch "s|^set background=dark$|set background=light|"; }
dark() { switch "s|^set background=light$|set background=dark|"; }

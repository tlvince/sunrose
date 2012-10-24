#!/bin/sh

dircolors="${dircolors:-${XDG_CONFIG_HOME:-$HOME/.config}/dircolors}"
light="${light:-$dircolors/solarized/dircolors.ansi-light}"
dark="${dark:-$dircolors/solarized/dircolors.ansi-dark}"

switch() { dircolors -b "$1" > "$dircolors/dircolors"; }
light() { switch "$light"; }
dark()  { switch "$dark"; }

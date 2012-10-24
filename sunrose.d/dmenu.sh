#!/bin/sh

light="${light:-${XDG_CONFIG:-$HOME/.config}/dmenu/colour/solarized-light}"
dark="${dark:-${XDG_CONFIG:-$HOME/.config}/dmenu/colour/solarized-dark}"
dmenurc="${dmenurc:-${XDG_CONFIG:-$HOME/.config}/dmenu/dmenu.conf}"

switch() {
  sed -i "$1" "$dmenurc"
}

light() { switch "s|$dark|$light|"; }
dark()  { switch "s|$light|$dark|"; }

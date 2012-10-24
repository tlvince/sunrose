#!/bin/dash

light="${light:-${XDG_LOCAL_HOME:-$HOME/.local/share}/themes/xrdb/solarized-light}"
dark="${dark:-${XDG_LOCAL_HOME:-$HOME/.local/share}/themes/xrdb/solarized-dark}"
xresources="${xresources:-${XDG_CONFIG_HOME:-$HOME/.config}/xorg/xresources}"

switch() {
  sed -i "$1" "$xresources"
  xrdb -load "$xresources"
}

light() { switch "s|$dark|$light|"; }
dark()  { switch "s|$light|$dark|"; }

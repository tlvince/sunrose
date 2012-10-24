#!/bin/sh

light="${light:-${XDG_CONFIG:-$HOME/.config}/mutt/colour/solarized/mutt-colors-solarized-light-16.muttrc}"
dark="${dark:-${XDG_CONFIG:-$HOME/.config}/mutt/colour/solarized/mutt-colors-solarized-dark-16.muttrc}"

muttrc="${muttrc:-${XDG_CONFIG:-$HOME/.config}/mutt/muttrc}"

switch() {
  sed -i "$1" "$muttrc"
}

light() { switch "s|$dark|$light|"; }
dark()  { switch "s|$light|$dark|"; }

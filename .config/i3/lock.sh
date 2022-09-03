#!/usr/bin/env bash

#icon="$HOME/Pictures/icon.png"
tmpbg='/tmp/screen.png'

#(( $# )) && { icon=$1; }

test -f $tmpbg && rm $tmpbg

scrot "$tmpbg"
convert "$tmpbg" -scale 16% -scale 625% "$tmpbg"
#convert "$tmpbg" "$icon" -composite -matte "$tmpbg"
i3lock -f -i "$tmpbg"

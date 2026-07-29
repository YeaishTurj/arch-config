#!/usr/bin/env bash

COMMAND="$1"
LABEL="$2"

DMENU="fuzzel --dmenu --match-mode fzf --width 20 --lines 2"

choice="$(
printf "%s\n" \
"  Yes" \
"  No" |
$DMENU --prompt "$LABEL?"
)"

[ -z "$choice" ] && exit
[ "$choice" = "  No" ] && exit

eval "$COMMAND"

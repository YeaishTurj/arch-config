#!/usr/bin/env bash

DMENU="fuzzel --dmenu --match-mode fzf --width 30 --lines 6"

choice="$(
printf "%s\n" \
"󰐥  Shutdown" \
"󰜉  Restart" \
"󰤄  Suspend" \
"󰒲  Hibernate" \
"󰌾  Lock" \
"󰍃  Logout" |
$DMENU --prompt "⏻ Power"
)"

case "$choice" in
    "󰐥  Shutdown")
~/.local/share/power-menu/confirm.sh "systemctl poweroff" "Shutdown"
        ;;
    "󰜉  Restart")
~/.local/share/power-menu/confirm.sh "systemctl reboot" "Restart"
        ;;
    "󰤄  Suspend")
~/.local/share/power-menu/confirm.sh "systemctl suspend" "Suspend"
        ;;
    "󰒲  Hibernate")
~/.local/share/power-menu/confirm.sh "systemctl hibernate" "Hibernate"
        ;;
    "󰌾  Lock")
        hyprlock
        ;;
    "󰍃  Logout")
~/.local/share/power-menu/confirm.sh "hyprctl dispatch exit" "Logout"
        ;;
esac

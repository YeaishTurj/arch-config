#!/usr/bin/env bash

nmcli device wifi rescan >/dev/null 2>&1
sleep 0.5

saved="$(
nmcli -t -f NAME,TYPE connection show |
awk -F: '$2=="802-11-wireless"{print $1}'
)"

ssid="$(
nmcli -t -e no -f ACTIVE,SSID,SECURITY device wifi list |
awk -F: -v saved="$saved" '
BEGIN {
    split(saved, s, "\n")
    for (i in s) known[s[i]]
}
!seen[$2]++ && $2 != "" {
    icon = ($1=="yes") ? "󰖩" : (known[$2] ? "󰸞" : "󰖪")
    lock = ($3!="") ? " " : ""
    print $2 "\t" icon " " $2 lock
}' |
fuzzel --dmenu \
       --prompt "󰖩 Wi-Fi" \
       --width 40 \
       --lines 12 \
       --match-mode fzf |
cut -f1
)"

[ -n "$ssid" ] && kitty ~/.local/share/wifi-menu/connect.sh "$ssid"
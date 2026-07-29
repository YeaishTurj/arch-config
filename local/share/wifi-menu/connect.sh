#!/usr/bin/env bash

SSID="$1"

[ -z "$SSID" ] && exit 1

show_header() {
    clear
    echo "========================================"
    echo "             Wi-Fi Manager"
    echo "========================================"
    echo
    echo "SSID : $SSID"
    echo
}

show_header

# ----------------------------------------------------------
# Already connected?
# ----------------------------------------------------------

if nmcli -t -f NAME,TYPE connection show --active \
    | grep -Fxq "${SSID}:802-11-wireless"
then

    read -rp "Disconnect? [y/N] " ans

    if [[ "$ans" =~ ^[Yy]$ ]]; then

        if nmcli connection down "$SSID"; then
            notify-send "Wi-Fi" "Disconnected from '$SSID'"
        else
            notify-send "Wi-Fi" "Failed to disconnect '$SSID'"
        fi

        sleep 1
    fi

    exit
fi


# ----------------------------------------------------------
# Saved network
# ----------------------------------------------------------

if nmcli -t -f NAME connection show | grep -Fxq "$SSID"
then

    while true; do

        show_header

        echo "[1] Connect"
        echo "[2] Forget network"
        echo "[0] Cancel"
        echo

        read -rp "Choice: " choice

        case "$choice" in

            1)

                echo
                echo "Connecting..."
                echo

                if nmcli connection up "$SSID"; then
                    notify-send "Wi-Fi" "Connected to '$SSID'"
                    sleep 1
                    exit
                else
                    echo
                    echo "Connection failed."
                    read -rp "Press ENTER..."
                fi
                ;;

            2)

                echo
                read -rp "Forget '$SSID'? [y/N] " ans

                [[ ! "$ans" =~ ^[Yy]$ ]] && continue

                if nmcli connection delete "$SSID"; then
                    notify-send "Wi-Fi" "Forgot '$SSID'"
                else
                    notify-send "Wi-Fi" "Failed to forget '$SSID'"
                fi

                sleep 1
                exit
                ;;

            0)
                exit
                ;;

            *)
                ;;
        esac

    done
fi


# ----------------------------------------------------------
# New network
# ----------------------------------------------------------

while true; do

    show_header

    echo "New network"
    echo

    read -rp "Password (leave empty to cancel): " PASSWORD
    echo

    [ -z "$PASSWORD" ] && exit

    echo
    echo "Connecting..."
    echo

    if nmcli device wifi connect "$SSID" password "$PASSWORD"; then
        notify-send "Wi-Fi" "Connected to '$SSID'"
        sleep 1
        exit
    fi

    echo
    echo "Connection failed."
    echo

    read -rp "Wrong password. Try again? [Y/n] " retry

    if [[ "$retry" =~ ^[Nn]$ ]]; then
        exit
    fi

done
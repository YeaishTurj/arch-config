#!/bin/bash

echo
echo "========================================="
echo " Arch configuration completed!"
echo "========================================="
echo
echo "Installed:"
echo "  ✓ Packages"
echo "  ✓ AUR Packages"
echo "  ✓ Dotfiles"
echo "  ✓ Services"
echo
echo "You should now:"
echo "  1. Reboot"
echo "  2. Login to Hyprland"
echo
read -rp "Reboot now? [Y/n]: " ans

case "$ans" in
    [Nn]*) ;;
    *) sudo reboot ;;
esac
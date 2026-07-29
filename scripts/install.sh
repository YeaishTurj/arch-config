#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"

echo "==> Updating package databases..."
sudo pacman -Syu --noconfirm

echo "==> Installing official packages..."

mapfile -t PACKAGES < <(grep -vE '^\s*#|^\s*$' "$ROOT_DIR/packages.txt")

sudo pacman -S --needed --noconfirm "${PACKAGES[@]}"

echo
echo "✓ Official packages installed successfully."

echo
echo "==> Installing yay..."
bash "$SCRIPT_DIR/install-yay.sh"

echo
echo "==> Installing AUR packages..."
bash "$SCRIPT_DIR/install-aur.sh"

echo
echo "✓ System setup complete."

echo
echo "Next step:"
echo "  ./scripts/link.sh"
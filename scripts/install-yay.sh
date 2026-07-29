#!/bin/bash

set -e

echo "==> Checking for yay..."

if command -v yay >/dev/null 2>&1; then
    echo "✓ yay is already installed."
    exit 0
fi

echo "==> Installing prerequisites..."
sudo pacman -S --needed --noconfirm git base-devel

TMP_DIR=$(mktemp -d)

echo "==> Cloning yay..."
git clone https://aur.archlinux.org/yay.git "$TMP_DIR/yay"

cd "$TMP_DIR/yay"

echo "==> Building and installing yay..."
makepkg -si --noconfirm

cd -

rm -rf "$TMP_DIR"

echo
echo "✓ yay installed successfully."

#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"

echo "==> Checking for yay..."

if ! command -v yay >/dev/null 2>&1; then
    echo "Error: yay is not installed."
    echo "Run ./scripts/install-yay.sh first."
    exit 1
fi

mapfile -t PACKAGES < <(grep -vE '^\s*#|^\s*$' "$ROOT_DIR/aur.txt")

echo "==> Installing AUR packages..."

yay -S --needed --noconfirm "${PACKAGES[@]}"

echo
echo "✓ AUR packages installed successfully."
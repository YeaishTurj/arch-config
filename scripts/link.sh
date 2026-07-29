#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"

echo "==> Linking dotfiles..."

mkdir -p "$HOME/.config"
mkdir -p "$HOME/.local/share"

# ~/.config
ln -sfn "$ROOT_DIR/dotfiles/hypr"      "$HOME/.config/hypr"
ln -sfn "$ROOT_DIR/dotfiles/kitty"     "$HOME/.config/kitty"
ln -sfn "$ROOT_DIR/dotfiles/waybar"    "$HOME/.config/waybar"
ln -sfn "$ROOT_DIR/dotfiles/fuzzel"    "$HOME/.config/fuzzel"
ln -sfn "$ROOT_DIR/dotfiles/mpv"       "$HOME/.config/mpv"
ln -sfn "$ROOT_DIR/dotfiles/mako"      "$HOME/.config/mako"
ln -sfn "$ROOT_DIR/dotfiles/fastfetch" "$HOME/.config/fastfetch"
ln -sfn "$ROOT_DIR/dotfiles/zathura"   "$HOME/.config/zathura"

# ~/.local/share
ln -sfn "$ROOT_DIR/local/share/power-menu" "$HOME/.local/share/power-menu"
ln -sfn "$ROOT_DIR/local/share/wifi-menu"  "$HOME/.local/share/wifi-menu"

echo
echo "✓ All dotfiles and local files linked successfully."
#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"

echo "==> Linking dotfiles..."

mkdir -p "$HOME/.config"
mkdir -p "$HOME/.local/share"
mkdir -p "$HOME/.local/bin"

link_item() {
    local source="$1"
    local target="$2"

    # Nothing exists -> simply link
    if [ ! -e "$target" ] && [ ! -L "$target" ]; then
        ln -s "$source" "$target"
        echo "✓ Linked $target"
        return
    fi

    # Already the correct symlink
    if [ -L "$target" ] && [ "$(readlink -f "$target")" = "$(readlink -f "$source")" ]; then
        echo "✓ Already linked: $target"
        return
    fi

    echo
    echo "--------------------------------------------------"
    echo "Existing configuration found:"
    echo "  $target"
    echo
    echo "Choose an action:"
    echo "  1) Backup and replace (recommended)"
    echo "  2) Keep existing and install as ${target}.new"
    echo "  3) Overwrite existing"
    echo "  4) Skip"
    echo "  5) Abort"
    echo

    while true; do
        read -rp "Enter choice [1-5]: " choice

        case "$choice" in
            1)
                backup="${target}.backup.$(date +%Y%m%d-%H%M%S)"
                mv "$target" "$backup"
                echo "Backed up to:"
                echo "  $backup"
                ln -s "$source" "$target"
                echo "✓ Linked $target"
                break
                ;;

            2)
                new_target="${target}.new"

                if [ -e "$new_target" ] || [ -L "$new_target" ]; then
                    new_target="${new_target}.$(date +%Y%m%d-%H%M%S)"
                fi

                ln -s "$source" "$new_target"
                echo "✓ Installed as:"
                echo "  $new_target"
                break
                ;;

            3)
                echo
                echo "WARNING!"
                echo "This will permanently delete:"
                echo "  $target"
                read -rp 'Type "YES" to continue: ' confirm

                if [ "$confirm" = "YES" ]; then
                    rm -rf "$target"
                    ln -s "$source" "$target"
                    echo "✓ Linked $target"
                else
                    echo "Cancelled."
                fi
                break
                ;;

            4)
                echo "Skipped $target"
                break
                ;;

            5)
                echo "Installation aborted."
                exit 1
                ;;

            *)
                echo "Invalid choice. Please enter 1-5."
                ;;
        esac
    done
}

# -----------------------------
# ~/.config
# -----------------------------
link_item "$ROOT_DIR/dotfiles/hypr"     "$HOME/.config/hypr"
link_item "$ROOT_DIR/dotfiles/kitty"    "$HOME/.config/kitty"
link_item "$ROOT_DIR/dotfiles/waybar"   "$HOME/.config/waybar"
link_item "$ROOT_DIR/dotfiles/fuzzel"   "$HOME/.config/fuzzel"
link_item "$ROOT_DIR/dotfiles/mpv"      "$HOME/.config/mpv"
link_item "$ROOT_DIR/dotfiles/swaync"   "$HOME/.config/swaync"
link_item "$ROOT_DIR/dotfiles/wlogout"  "$HOME/.config/wlogout"
link_item "$ROOT_DIR/dotfiles/zathura"  "$HOME/.config/zathura"

# -----------------------------
# ~/.local/bin
# -----------------------------
link_item "$ROOT_DIR/local/bin/hypridle-dpms"     "$HOME/.local/bin/hypridle-dpms"
link_item "$ROOT_DIR/local/bin/hypridle-lock"     "$HOME/.local/bin/hypridle-lock"
link_item "$ROOT_DIR/local/bin/hypridle-suspend"  "$HOME/.local/bin/hypridle-suspend"

# -----------------------------
# ~/.local/share
# -----------------------------
link_item "$ROOT_DIR/local/share/power-menu" "$HOME/.local/share/power-menu"
link_item "$ROOT_DIR/local/share/wifi-menu"  "$HOME/.local/share/wifi-menu"

echo
echo "======================================"
echo "✓ All requested links have been processed."
echo "======================================"

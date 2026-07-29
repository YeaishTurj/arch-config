#!/bin/bash

set -e

echo "==> Enabling system services..."

# System services
sudo systemctl enable NetworkManager.service
sudo systemctl enable bluetooth.service
sudo usermod -aG docker "$USER"

echo "==> Enabling user services..."

# User services
systemctl --user enable pipewire.service
systemctl --user enable wireplumber.service
systemctl --user enable hypridle.service
systemctl --user enable xdg-desktop-portal-hyprland.service

echo "✓ Services enabled."
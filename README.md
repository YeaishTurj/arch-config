# Arch Config

My personal Arch Linux dotfiles and setup scripts for quickly reproducing my development environment on a fresh installation.

## Features

- One-command installation of official Arch packages
- Automatic installation of `yay`
- Automatic installation of AUR packages
- Dotfile management using symbolic links
- Portable scripts (work regardless of repository location)
- Separate lists for official and AUR packages

---

## Repository Structure

```text
arch-config/
├── aur.txt                 # AUR packages
├── packages.txt            # Official repository packages
├── dotfiles/               # Configuration files
│   ├── fastfetch/
│   ├── fuzzel/
│   ├── hypr/
│   ├── kitty/
│   ├── mako/
│   ├── mpv/
│   ├── waybar/
│   └── zathura/
├── local/
│   └── share/
│       ├── power-menu/
│       └── wifi-menu/
└── scripts/
    ├── install.sh
    ├── install-yay.sh
    ├── install-aur.sh
    ├── link.sh
    └── update.sh
```

---

## Installation

Clone the repository:

```bash
git clone https://github.com/YeaishTurj/arch-config.git
cd arch-config
```

Install everything:

```bash
./scripts/install.sh
```

Create symbolic links for the configuration files:

```bash
./scripts/link.sh
```

---

## What `install.sh` Does

1. Updates the system.
2. Installs all official Arch packages from `packages.txt`.
3. Installs `yay` automatically.
4. Installs all AUR packages from `aur.txt`.

No manual package installation is required.

---

## Updating Package Lists

Whenever you install or remove software:

```bash
./scripts/update.sh
```

This regenerates:

- `packages.txt`
- `aur.txt`

---

## Dotfiles

The following configurations are managed:

- Hyprland
- Waybar
- Kitty
- Fuzzel
- Mako
- MPV
- Fastfetch
- Zathura

Local scripts:

- Power Menu
- WiFi Menu

---

## Requirements

- Fresh Arch Linux installation
- Internet connection
- A user with `sudo` privileges

---

## License

This repository is intended for personal use but may be used as a reference for others.
# Arch Config

My personal Arch Linux dotfiles and setup scripts for quickly reproducing my Arch Linux development environment on a fresh installation.

## Features

- One-command installation script
- Automatic installation of `yay`
- Automatic installation of AUR packages
- Automatic setup of services
- Symbolic linking of dotfiles
- Portable scripts (work regardless of repository location)
- Separate package lists for official repositories and AUR
- Organized Hyprland configuration using Lua modules

---

## Repository Structure

```text
.
├── aur.txt
├── dotfiles
│   ├── fuzzel
│   │   └── fuzzel.ini
│   ├── hypr
│   │   ├── hypridle.conf
│   │   ├── hyprland.lua
│   │   ├── hyprlock.conf
│   │   ├── hyprpaper.conf
│   │   ├── hyprsunset.conf
│   │   └── modules
│   │       ├── animations.lua
│   │       ├── appearance.lua
│   │       ├── autostart.lua
│   │       ├── environment.lua
│   │       ├── input.lua
│   │       ├── keybinds.lua
│   │       ├── layouts.lua
│   │       ├── misc.lua
│   │       ├── monitors.lua
│   │       ├── permissions.lua
│   │       ├── programs.lua
│   │       └── rules.lua
│   ├── kitty
│   │   ├── current-theme.conf
│   │   ├── dark-theme.auto.conf
│   │   └── kitty.conf
│   ├── mpv
│   │   ├── input.conf
│   │   ├── mpv.conf
│   │   └── scripts
│   │       └── aspect-cycle.lua
│   ├── swaync
│   │   ├── config.json
│   │   └── style.css
│   ├── waybar
│   │   ├── config.jsonc
│   │   └── style.css
│   ├── wlogout
│   │   ├── layout
│   │   └── style.css
│   └── zathura
│       └── zathurarc
├── local
│   ├── bin
│   │   ├── hypridle-dpms
│   │   ├── hypridle-lock
│   │   └── hypridle-suspend
│   └── share
│       ├── power-menu
│       │   ├── confirm.sh
│       │   └── power.sh
│       └── wifi-menu
│           ├── connect.sh
│           └── wifi.sh
├── packages.txt
├── README.md
└── scripts
    ├── finish.sh
    ├── install-aur.sh
    ├── install.sh
    ├── install-yay.sh
    ├── link.sh
    ├── services.sh
    └── setup.sh
```

---

## Installation

Clone the repository:

```bash
git clone https://github.com/YeaishTurj/arch-config.git
cd arch-config
```

Run the installation:

```bash
./scripts/install.sh
```

This script installs:

- Official Arch packages from `packages.txt`
- `yay` (if not already installed)
- AUR packages from `aur.txt`

After installation, create the symbolic links:

```bash
./scripts/link.sh
```

Optionally configure services:

```bash
./scripts/services.sh
```

Complete any remaining setup:

```bash
./scripts/setup.sh
```

---

## Installation Workflow

The scripts are intended to be run in the following order:

```text
install.sh
    ├── install official packages
    ├── install yay
    └── install AUR packages

link.sh
    └── create symbolic links for all dotfiles

services.sh
    └── enable required systemd services

setup.sh
    └── additional system configuration

finish.sh
    └── final cleanup and post-install tasks
```

---

## Managed Dotfiles

### Desktop

- Hyprland
- Hypridle
- Hyprlock
- Hyprpaper
- Hyprsunset
- Waybar
- Sway Notification Center (`swaync`)
- Wlogout
- Fuzzel

### Applications

- Kitty
- MPV
- Zathura

### Local Scripts

#### `~/.local/bin`

- `hypridle-dpms`
- `hypridle-lock`
- `hypridle-suspend`

#### `~/.local/share`

- Power Menu
- WiFi Menu

---

## Hyprland Configuration

The Hyprland configuration is modular and split into multiple Lua files:

- Animations
- Appearance
- Autostart
- Environment
- Input
- Keybindings
- Layouts
- Monitors
- Permissions
- Programs
- Rules
- Miscellaneous

This makes the configuration easier to maintain and extend.

---

## Requirements

- Fresh Arch Linux installation
- Internet connection
- User with `sudo` privileges
- Git

---

## License

This repository is primarily for personal use but may serve as a reference for others.

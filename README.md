# Linux Desktop Configuration

Personal desktop configuration for **i3**, **Polybar**, Neovim, and related UI tools. The active i3 session starts the **Emilia** Polybar theme; the repository also contains several other Polybar themes and Rofi menus.

## What's included

- `i3/` — i3 window-manager configuration and wallpaper.
- `polybar/` — Polybar themes, launchers, scripts, and Rofi UI assets. The active theme is `emilia/`.
- `nvim/` — Neovim configuration and plugin lockfile.
- `rofi/`, `picom/`, `dunst/` — launcher, compositor, and notification-daemon configuration.
- `gtk-3.0/`, `Kvantum/`, `xob/` — additional appearance and UI settings.
- `.local/bin/fet` — executable system-info script.

## Install

Back up any existing configuration before copying files. From the repository root:

```sh
cp -a i3 polybar nvim rofi picom dunst gtk-3.0 Kvantum xob ~/.config/
mkdir -p ~/.local/bin
install -m 755 .local/bin/fet ~/.local/bin/fet
```

Reload i3 (`$mod+Shift+r`) or log out and back in to apply the window-manager and Polybar settings. The i3 config launches Polybar with:

```sh
bash ~/.config/polybar/launch.sh --emilia
```

To launch another available theme manually, pass its name to `polybar/launch.sh`, for example `--shapes`, `--blocks`, or `--panels`.

## Dependencies

Install the applications and tools required by the configuration and scripts you use. These commonly include i3, Polybar, Rofi, Picom, Dunst, Neovim, Alacritty, and the fonts/icons referenced by the themes. Some optional Polybar scripts also rely on tools such as `playerctl`, `NetworkManager`, `pywal`, or `pacman`.

Some settings and scripts assume an Arch-based system and an X11/i3 session; review paths, commands, and optional dependencies before using them on another system.

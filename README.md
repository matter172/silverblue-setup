# silverblue-setup

Setup scripts for a fresh Fedora Silverblue install.

- `01-layering/`: packages layered with `rpm-ostree` (podman-compose, pipx, Proton Pass, gh, VS Code).
- `02-non-layering/`: tools installed outside the OS image (Claude Code, gnome-extensions-cli).
- `03-gnome-ext/`: GNOME Shell extensions installed with `gext` (Caffeine).

## Usage

```bash
bash 01-layering/00-layering.sh
systemctl reboot   # layered packages take effect after reboot
bash 02-non-layering/00-non-layering.sh
bash 03-gnome-ext/00-gnome-ext.sh
```

Each runner executes the numbered scripts in its folder in order. They are safe to rerun.

# silverblue-setup

Setup scripts for a fresh Fedora Silverblue install.

- `layering/`: packages layered with `rpm-ostree` (podman-compose, Proton Pass, gh, VS Code).
- `non-layering/`: tools installed outside the OS image (Claude Code).

## Usage

```bash
bash layering/00-layering.sh
systemctl reboot   # layered packages take effect after reboot
bash non-layering/00-non-layering.sh
```

Each runner executes the numbered scripts in its folder in order. They are safe to rerun.

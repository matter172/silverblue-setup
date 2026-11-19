#!/bin/bash

# custom rpm repo; see: https://github.com/matter172/unofficial-proton-pass-rpm
sudo dnf config-manager addrepo --from-repofile=https://raw.githubusercontent.com/matter172/unofficial-proton-pass-rpm/refs/heads/main/proton-pass-unofficial.repo

rpm-ostree install --idempotent proton-pass

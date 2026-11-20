#!/bin/bash

# failed extension installs/updates; see https://github.com/microsoft/vscode/issues/346065
rpm-ostree install --idempotent openssl3-libs

# vscode isn't in fedora repos; see https://code.visualstudio.com/docs/setup/linux#_rhel-fedora-and-centos-based-distributions
sudo tee /etc/yum.repos.d/vscode.repo > /dev/null <<'REPO'
[code]
name=Visual Studio Code
baseurl=https://packages.microsoft.com/yumrepos/vscode
enabled=1
autorefresh=1
type=rpm-md
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc
REPO

rpm-ostree install --idempotent code

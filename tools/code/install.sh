#!/bin/bash

source utils.sh

# https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
    | gpg --dearmor \
    | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg
echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/debs vscodium main' \
    | sudo tee /etc/apt/sources.list.d/vscodium.list

sudo apt-get -y update
sudo apt-get -y install codium

# Extensions
codium --force --install-extension ms-python.python
codium --force --install-extension golang.Go
codium --force --install-extension znck.grammarly
codium --force --install-extension stkb.rewrap
codium --force --install-extension vscode-icons-team.vscode-icons
codium --force --install-extension hashicorp.hcl
codium --force --install-extension streetsidesoftware.-spell-checker
codium --force --install-extension DavidAnson.vscode-markdownlint
codium --force --install-extension shd101wyy.markdown-preview-enhanced
codium --force --install-extension pomdtr.excalidraw-editor
codium --force --install-extension ms-vscode.makefile-tools

# Theme
codium --force --install-extension dracula-theme.theme-dracula

# configs
_ln "$(pwd)/tools/code/settings.json" "${HOME}/.config/VSCodium/User/settings.json"
_ln "$(pwd)/tools/code/product.json" "${HOME}/.config/VSCodium/product.json"

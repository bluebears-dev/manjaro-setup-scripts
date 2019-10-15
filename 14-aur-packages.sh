#!/usr/bin/env bash

# Fail if any command fails
set -eu
set -o pipefail

echo -e "#################################"
echo -e "> Installing basic AUR packages..."

yay -Sy spotify --noconfirm
yay -Sy bookworm --noconfirm
# yay -Sy megasync --noconfirm
yay -Sy dislocker --noconfirm
yay -Sy ocs-url --noconfirm

echo -e "> Installing themes AUR packages..."

yay -Sy layan-gtk-theme-git --noconfirm
yay -Sy suru-plus-aspromauros-git --noconfirm

echo -e "> Installing dev AUR packages..."

yay -Sy jetbrains-toolbox --noconfirm
yay -Sy postman --noconfirm
yay -Sy gitkraken --noconfirm
yay -Sy bless --noconfirm
yay -Sy filezilla --noconfirm


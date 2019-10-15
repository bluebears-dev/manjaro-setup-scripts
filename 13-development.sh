#!/usr/bin/env bash

# Fail if any command fails
set -eu
set -o pipefail

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

echo -e "#################################"
echo -e "> Installing dev packages..."

pacman -Sy cmake --noconfirm
pacman -Sy code --noconfirm
pacman -Sy virtualbox virtualbox-guest-utils-nox --noconfirm
pacman -Sy elixir --noconfirm
pacman -Sy ipython --noconfirm
pacman -Sy neovim python-neovim --noconfirm
pacman -Sy docker docker-compose docker-machine --noconfirm

curl -s "https://get.sdkman.io" | bash

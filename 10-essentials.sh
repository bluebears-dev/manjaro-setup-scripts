#!/usr/bin/env bash

# Fail if any command fails
set -eu
set -o pipefail

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

echo -e "#################################"
echo -e "> Installing essential packages..."

pacman -Sy base-devel --noconfirm
pacman -Sy ntfs-3g --noconfirm
pacman -Sy curl --noconfirm
pacman -Sy terminator --noconfirm
pacman -Sy chrome-gnome-shell --noconfirm


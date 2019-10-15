#!/usr/bin/env bash

# Fail if any command fails
set -eu
set -o pipefail

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

echo -e "#################################"
echo -e "> Installing basic packages..."

pacman -Sy feh --noconfirm
pacman -Sy blender --noconfirm
pacman -Sy gimp --noconfirm
pacman -Sy audacity --noconfirm
pacman -Sy firefox-developer-edition --noconfirm
pacman -Sy deluge --noconfirm
pacman -Sy ddrescue --noconfirm
pacman -Sy mpv --noconfirm
pacman -Sy discord --noconfirm
pacman -Sy zsh-completions --noconfirm



#!/usr/bin/env bash

# Fail if any command fails
set -eu
set -o pipefail

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

echo -e "#################################"
echo -e "> Resetting gnome..."
gnome-reset

pacman -Rs empathy --noconfirm
pacman -Rs gnome-calendar --noconfirm
pacman -Rs gnome-contacts --noconfirm
pacman -Rs gnome-maps --noconfirm
pacman -Rs gnome-notes --noconfirm
pacman -Rs gnome-todo --noconfirm
pacman -Rs hexchat --noconfirm
pacman -Rs simple-scan --noconfirm
pacman -Rs totem --noconfirm
pacman -Rs transmission-gtk --noconfirm

echo -e "> Rebooting..."
reboot

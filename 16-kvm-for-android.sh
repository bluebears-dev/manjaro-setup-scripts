#!/usr/bin/env bash

# Fail if any command fails
set -eu
set -o pipefail

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

echo -e "#################################"
echo -e "> Installing KVM packages..."

pacman -Sy virt-manager --noconfirm
pacman -Sy qemu --noconfirm
pacman -Sy vde2 --noconfirm
pacman -Sy ebtables --noconfirm
pacman -Sy dnsmasq --noconfirm
pacman -Sy bridge-utils --noconfirm
pacman -Sy openbsd-netcat --noconfirm

systemctl enable libvirtd.service
systemctl start libvirtd.service

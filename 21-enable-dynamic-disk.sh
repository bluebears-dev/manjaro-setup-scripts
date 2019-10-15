#!/usr/bin/env bash

# Fail if any command fails
set -eu
set -o pipefail

echo -e "#################################"
echo -e "> Installing ldmtool..."

yay -Sy ldmtool --noconfirm

echo -e "> Enabling dynamic disks..."

sudo ldmtool create all
sudo mv ldmtool.service /etc/systemd/system/
sudo systemctl enable ldmtool.service

#!/usr/bin/env bash

# Fail if any command fails
set -eu
set -o pipefail

echo -e "#################################"
echo -e "> Installing Grub theme..."

curl https://gitlab.com/fffred/primitivistical-grub/-/archive/v0.2/primitivistical-grub-v0.2.tar.gz --output grub-theme.tar.gz
tar xvf grub-theme.tar.gz &> /dev/null 

cd primitivistical-grub-v0.2/
sudo ./Install.sh

echo -e "> Cleaning..."

cd ..
rm -rf primitivistical-grub-v0.2 grub-theme.tar.gz

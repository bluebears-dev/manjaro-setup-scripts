#!/usr/bin/env bash

# Fail if any command fails
set -eu
set -o pipefail

echo -e "#################################"
echo -e "> Installing yay..."

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay

echo -e "> Installing oh-my-zsh..."

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
exit

echo -e "Restart your shell"


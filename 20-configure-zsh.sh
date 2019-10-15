#!/usr/bin/env bash

echo -e "#################################"
echo -e "> Tweaking .zshrc..."

sed -i -f zsh.sed ${HOME}/.zshrc


echo -e "> Adding imports..."

touch ${HOME}/.alias
echo 'source ${HOME}/.alias' >> .zshrc
touch ${HOME}/.export
echo 'source ${HOME}/.export' >> .zshrc
echo 'source "$HOME/.sdkman/bin/sdkman-init.sh"' >> .zshrc


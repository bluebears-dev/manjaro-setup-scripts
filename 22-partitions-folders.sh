#!/usr/bin/env bash

# Fail if any command fails
set -eu
set -o pipefail

echo -e "#################################"
echo -e "> Symlinking partitions..."

ln -s /mnt/Lab ${HOME}/Lab
ln -s /mnt/Media ${HOME}/Media

echo -e "> Setting up default folders..."

DESKTOP="/mnt/Media/Desktop"
DOCUMENTS="/mnt/Media/Documents"
DOWNLOAD="/mnt/Media/Downloads"
MUSIC="/mnt/Media/Music"
PICTURES="/mnt/Media/Pictures"
VIDEOS="/mnt/Media/Videos"

xdg-user-dirs-update --set DESKTOP ${DESKTOP}
xdg-user-dirs-update --set DOCUMENTS ${DOCUMENTS}
xdg-user-dirs-update --set DOWNLOAD ${DOWNLOAD}
xdg-user-dirs-update --set MUSIC ${MUSIC}
xdg-user-dirs-update --set PICTURES ${PICTURES}
xdg-user-dirs-update --set VIDEOS ${VIDEOS}

rm -r ${HOME}/Desktop ${HOME}/Documents ${HOME}/Downloads ${HOME}/Music ${HOME}/Pictures ${HOME}/Videos
ln -s ${DESKTOP} ${HOME}/Desktop
ln -s ${DOCUMENTS}
ln -s ${DOWNLOAD} ${HOME}/Downloads
ln -s ${MUSIC} ${HOME}/Music
ln -s ${PICTURES} ${HOME}/Pictures
ln -s ${VIDEOS} ${HOME}/Videos

#!/bin/sh

mv second.sh ..

sudo apt-get update
sudo apt upgrade

#install zsh
sudo apt install zsh

sudo sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo chsh -s $(which zsh) $(whoami)

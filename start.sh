#!/bin/sh

sudo apt-get update
sudo apt upgrade

#install zsh
sudo apt install zsh

sudo sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo chsh -s $(which zsh) $(whoami)

sudo apt install fonts-powerline

sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

mv .tmux.conf ..
mv .vimrc ..
mv .zshrc ..

source .zshrc

rm -rf dotfile/

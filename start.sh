#!/bin/sh

sudo apt-get update
sudo apt upgrade

#install zsh
sudo apt install zsh

sudo sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo chsh -s $(which zsh) $(whoami)

sudo apt install fonts-powerline

sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1

sudo git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

sudo git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/dotfile/.zshrc

mv .tmux.conf ..
mv .vimrc ..
mv .zshrc ..

source .zshrc

rm -rf dotfile/

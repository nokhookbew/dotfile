sudo apt install fonts-powerline

sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting

sudo git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

mv dotfile/.tmux.conf .
mv dotfile/.vimrc .
mv dotfile/.zshrc .

source .zshrc


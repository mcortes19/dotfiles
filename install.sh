#!/usr/bin/env bash

# Install esencial apps and binaries with Brew.
source ./brew.sh

# Install Oh-My-ZSH
# https://github.com/robbyrussell/oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Install Oh-My-ZSH POWERLEVEL9K theme.
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Install Oh-My-ZSH plugins.
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm

# Create dotfiles symlink.
./symlink.sh

# Configure MacOS defaults.
# You only want to run this once during setup. Additional runs may reset changes you make manually.
# source ./macos.sh

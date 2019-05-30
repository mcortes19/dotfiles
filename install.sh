#!/usr/bin/env bash

# Install Oh My ZSH
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Install apps and binaries with Brew
source ./brew.sh

# Install POWERLEVEL9K theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Create dotfiles symlink.
./symlink.sh

# Set npm permissions and install global binaries
source ./npm.sh

# Configure MacOS defaults.
# You only want to run this once during setup. Additional runs may reset changes you make manually.
# source ./macos.sh

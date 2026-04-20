# Install Oh-My-ZSH

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  # Installs Oh my ZSH with Homebrew (Mac)
  # https://github.com/robbyrussell/oh-my-zsh
  sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
fi

# Install Oh-My-ZSH POWERLEVEL10K theme - https://github.com/romkatv/powerlevel10k#oh-my-zsh
[ ! -d ~/.oh-my-zsh/custom/themes/powerlevel10k ] && \
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k

# Install Oh-My-ZSH plugins.
[ ! -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ] && \
  git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
[ ! -d ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ] && \
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
[ ! -d ~/.oh-my-zsh/custom/plugins/zsh-completions ] && \
  git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
# Note: nvm is managed by the built-in omz nvm plugin (configured via zstyle in .zshrc)

#!/usr/bin/env bash
#----- This file you can customise and set the various colors of your zsh shell. -----#

# Load the shell dotfiles
# * ~/.theme set the shell theme.
# * ~/.path extend $PATH.
# * ~/.aliases extend the system aliases.
# * ~/.exports extend export.
# * ~/.functions add custom functions.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{theme,path,aliases,exports,functions,extra}; do
 [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  brew
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-completions
  zsh-nvm
  docker
  docker-compose
  vagrant
)

# Load OH-MY-ZSH themes and plugins.
source $ZSH/oh-my-zsh.sh

# iTerm2 integration
source ~/.iterm2/.iterm2_shell_integration.zsh

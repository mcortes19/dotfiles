#!/usr/bin/env bash
#----- This file you can customise and set the various colors of your zsh shell. -----#

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Load dotfiles config.
# * ~/.env-variables: custom environment variables.
# * ~/.functions add custom functions.
# * ~/.p10k.zsh theme configuration.
for file in ~/.{env-variables,functions,p10k.zsh}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

#  Plugin settings.
zstyle ':omz:plugins:nvm' autoload yes
zstyle ':omz:plugins:nvm' lazy yes
zstyle ':omz:plugins:nvm' silent-autoload yes
zstyle :omz:plugins:iterm2 shell-integration yes

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  aliases
  fzf
  brew
  git
  zsh-autosuggestions
  zsh-better-npm-completion
  zsh-syntax-highlighting
  zsh-completions
  nvm
  iterm2
  copypath
  zoxide
)

# Load OH-MY-ZSH themes and plugins.
[[ -f "$ZSH/"'oh-my-zsh.sh' ]] && source $ZSH/oh-my-zsh.sh

# Load iTerm2 integration
# [[ -f "$HOME/"'.iterm2_shell_integration.zsh' ]] && source ~/.iterm2_shell_integration.zsh

# Load Platform.sh CLI configuration
[[ -f "$HOME/"'.platformsh/shell-config.rc' ]] && . "$HOME/"'.platformsh/shell-config.rc'

# Load aliases dotfile
[[ -f "$HOME/"'.aliases' ]] && source "$HOME/"'.aliases'

# Enable zsh-completions.
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
  autoload -Uz compinit
  compinit
fi

# Enable FZF
eval "$(fzf --zsh)"

# Use fd (https://github.com/sharkdp/fd) for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}

# Advanced customization of fzf options via _fzf_comprun function
# - The first argument to the function is the name of the command.
# - You should make sure to pass the rest of the arguments to fzf.
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
    export|unset) fzf --preview "eval 'echo $'{}"         "$@" ;;
    ssh)          fzf --preview 'dig {}'                   "$@" ;;
    *)            fzf --preview "bat -n --color=always --line-range :500 {}" "$@" ;;
  esac
}

#  Enable zoxide
eval "$(zoxide init zsh)"

# Lando
export PATH="/Users/mcortes19/.lando/bin${PATH+:$PATH}"; #landopath
export PATH="/opt/homebrew/opt/mysql-client@8.0/bin:$PATH"


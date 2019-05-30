#!/usr/bin/env bash
#----- This file you can customise and set the various colors of your zsh shell. -----#

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

#-- POWERLEVEL9K SETTINGS --#
# https://github.com/bhilburn/powerlevel9k
# powerlevel9k theme settings
ZSH_THEME="powerlevel9k/powerlevel9k"

# Left prompt settings
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  status
  background_jobs_joined
  root_indicator_joined
  context
  os_icon
  dir
  dir_writable
  vcs
)
# Right prompt settings
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()

POWERLEVEL9K_DISABLE_RPROMPT="true"

# Context element settings
POWERLEVEL9K_CONTEXT_TEMPLATE="$USER"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="015"
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="cyan" #031

# OS icon elements settings
POWERLEVEL9K_OS_ICON_FOREGROUND="015"
POWERLEVEL9K_OS_ICON_BACKGROUND="cyan" #031

# dir element settings
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3

POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="238"
POWERLEVEL9K_DIR_HOME_BACKGROUND="238"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="238"
POWERLEVEL9K_DIR_ETC_BACKGROUND="238"

POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="015"
POWERLEVEL9K_DIR_HOME_FOREGROUND="015"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="015"
POWERLEVEL9K_DIR_ETC_FOREGROUND="015"

POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="000"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND="196"
# Status element settings #
POWERLEVEL9K_STATUS_VERBOSE="false"

# fonts config
# https://medium.freecodecamp.org/how-you-can-style-your-terminal-like-medium-freecodecamp-or-any-way-you-want-f499234d48bc
POWERLEVEL9K_MODE="nerdfont-complete"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  brew
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-completions
  docker
  docker-compose
  vagrant
)

# Load OH-MY-ZSH themes and plugins.
source $ZSH/oh-my-zsh.sh

# iTerm2 integration
source ~/.iterm2/.iterm2_shell_integration.zsh

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend $PATH.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,aliases,exports,nvm-script,functions,extra}; do
 [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

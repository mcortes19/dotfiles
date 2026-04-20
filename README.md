# Mac Installation Instructions

## Prerequisites

* macOS (Apple Silicon)
* Xcode Command Line Tools: `xcode-select --install`

## 1. Run `./setup.sh`

What this does:

* Installs Homebrew and app binaries. See [brew.sh](./brew.sh) for a list of installed items
* Creates symlinks from `./dotfiles` folder to `$HOME` folder
* Installs Oh My ZSH and useful plugins
* Sets several defaults for macOS

## 2. Set up Git identity

Git user details are gitignored and must be configured manually:

```bash
cp ~/dotfiles/dotfiles/.gitconfig.local.example ~/.gitconfig.local
# Edit ~/.gitconfig.local with your name, email, and GPG signing key
```

## 3. Import iTerm2 profiles

* **Profile**: Preferences → Profiles → Other Actions → Import JSON Profiles → `iterm/mcortes19.json`
* **Colors**: Preferences → Profiles → Colors → Color Presets → Import → `iterm/*.itermcolors`

## Dotfiles

| File | Purpose |
|---|---|
| `.aliases` | Shell aliases |
| `.env-variables` | Environment variables and PATH |
| `.functions` | Shell functions |
| `.gitconfig` | Git configuration (identity via `.gitconfig.local`) |
| `.zshrc` | ZSH configuration and plugins |
| `.zprofile` | Login shell config (OrbStack) |

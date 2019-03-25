function createSymlinks() {
  # Make a symlink for all dotfiles in this directory
  for file in \.[^.]*; do
    if [ $file != '.DS_Store' ]; then
      echo "Creating symlink to $file in home directory."
      ln -sf $PWD/$file ~/$file
    fi
  done
  rm -rf ~/.git;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  createSymlinks;
else
  read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
  echo "";
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    createSymlinks;
  fi;
fi;
unset createSymlinks;

#!/usr/bin/zsh
foreach target (~/.dotfiles/*.symlink)
  base=`basename ${target} .symlink`
  echo "Installing ${target} at ~/.${base}"
  ln -s $target ~/.${base}
end

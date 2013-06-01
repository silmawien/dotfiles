#!/usr/bin/zsh
foreach target (~/.dotfiles/*.symlink)
  dst=$HOME/.`basename ${target} .symlink`
  if [[ -a $dst || -h $dst ]]; then
    echo Skipping `ls -ld $dst | awk '{print $9, $10, $11}'`
  else
    echo "Adding $dst -> $target"
    ln -s $target $dst
  fi
end

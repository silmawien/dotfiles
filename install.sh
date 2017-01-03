#!/usr/bin/zsh
foreach target (~/.dotfiles/*.symlink)
  dst=$HOME/.`basename ${target} .symlink`
  if [[ -a $dst || -h $dst ]]; then
    echo Skipping $dst \[`readlink $dst`\]
  else
    echo "Adding $dst -> $target"
    ln -s $target $dst
  fi
end

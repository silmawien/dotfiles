# stop ctrl-s and ctrl-q from being eaten
stty -ixon

# PuTTY binds
# Use 'zkbd' to figure out what sequence a key generates
bindkey '^[[1~' beginning-of-line       # home
bindkey '^[[4~' end-of-line             # end
bindkey '^[^[[C' emacs-forward-word     # alt-right
bindkey '^[^[[D' emacs-backward-word    # alt-left

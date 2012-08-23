# Use Ubuntu's command-not-found facility
if [ -f /etc/zsh_command_not_found ]; then
    . /etc/zsh_command_not_found
fi

eval "$(dircolors -b)"
alias ls="ls --color=auto"

export CDPATH=".:${HOME}/sandbox"

export EDITOR="vi"

# stop ctrl-s from being eaten
stty ixoff -ixon

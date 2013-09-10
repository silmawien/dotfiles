# Use Ubuntu's command-not-found facility
if [ -f /etc/zsh_command_not_found ]; then
    . /etc/zsh_command_not_found
fi

eval "$(dircolors -b)"
alias ls="ls --color=auto"

export CDPATH=".:${HOME}/sandbox"

export EDITOR="vi"

if [[ -z $TMUX && $COLORTERM == "gnome-terminal" ]]; then
    export TERM=xterm-256color
fi

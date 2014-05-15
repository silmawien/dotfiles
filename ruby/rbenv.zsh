if [[ -d $HOME/.rbenv ]]; then
    # per-user installation of rbenv
    PATH="$HOME/.rbenv/bin:$PATH"

    eval "$(rbenv init - zsh)"
fi

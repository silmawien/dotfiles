if [[ -d $HOME/.rbenv ]]; then
    # per-user installation of rbenv
    export PATH="$HOME/.rbenv/bin:$PATH"

    eval "$(rbenv init -)"
fi

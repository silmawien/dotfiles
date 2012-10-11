if [[ -d $HOME/.tconn ]]; then
    export LD_PRELOAD="$HOME/.tconn/tconn.so:$LD_PRELOAD"
fi


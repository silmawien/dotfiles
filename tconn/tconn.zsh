if [[ -d $HOME/.tconn ]]; then
    export LD_LIBRARY_PATH=~/.tconn/lib
    export LD_PRELOAD=tconn.so:$LD_PRELOAD
fi


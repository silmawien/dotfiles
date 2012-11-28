if [[ -d $HOME/.tconn ]]; then
    export LD_LIBRARY_PATH=~/.tconn/'$LIB'
    export LD_PRELOAD=tconn.so:$LD_PRELOAD
fi


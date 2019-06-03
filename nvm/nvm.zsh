if [[ -d $HOME/.nvm ]]; then
    export NVM_DIR=$HOME/.nvm
    . "$NVM_DIR/nvm.sh"
    . "$NVM_DIR/bash_completion"
fi

# emacs mode
bindkey -e
# implicit cd
setopt AUTO_CD
# avoids having to run precmd
setopt PROMPT_SUBST
# save history line by line
setopt INC_APPEND_HISTORY
# pushd automatically, to enable $ cd -[tab]
setopt AUTO_PUSHD

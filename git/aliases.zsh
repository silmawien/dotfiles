function gpp() {
    repo_path=$(git config --get remote.origin.url | sed 's/^.*review.sonyericsson.net//')
    if [[ -n "$repo_path" ]]; then
        git push ssh://mattias.niklewski@review.sonyericsson.net:29418$repo_path $@
    else
        echo "Could not parse remote.origin.url. Not a git repo?"
    fi
}

alias gs="git status -sb"
alias gd="git diff"
alias gc="git commit"
alias gca="git commit -a"
alias gp="git push origin HEAD"
alias gl="git log --oneline --graph"

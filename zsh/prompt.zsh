autoload colors && colors
# cheers, @ehrenmurdick
# http://github.com/ehrenmurdick/config/blob/master/zsh/prompt.zsh

git_branch() {
    echo $(/usr/bin/git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

git_branch_maybe() {
    st=$(/usr/bin/git status -s 2>/dev/null)
    if [[ $? -eq 0 ]]; then
        echo -n "%{$fg_bold[grey]%}"
        if [[ "$st" != "" ]]; then
            echo -n "*"
        fi
        echo -n "$(git_prompt_info)"
        echo "%{$reset_color%}"
    else
        echo ""
    fi
}

git_prompt_info () {
    ref=$(/usr/bin/git symbolic-ref HEAD 2>/dev/null) || return
    echo "${ref#refs/heads/}"
}

directory_name(){
    echo "%{$fg_bold[cyan]%}%1/%\/%{$reset_color%}"
}

error_code() {
    echo "%(?..%{$bg_no_bold[yellow]%}%{$fg_no_bold[black]%} %? %{$reset_color%} )"
}

jobno="%(1j.[%j].)"

PROMPT=${jobno}$'$(error_code)$(directory_name) %(!.#.›) '
RPROMPT='$(git_branch_maybe)'

precmd() {
    #title "zsh" "%m" "%55<...<%~"
}

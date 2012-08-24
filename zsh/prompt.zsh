autoload colors && colors
# cheers, @ehrenmurdick
# http://github.com/ehrenmurdick/config/blob/master/zsh/prompt.zsh

git_branch() {
  echo $(/usr/bin/git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

git_dirty() {
  st=$(/usr/bin/git status 2>/dev/null | tail -n 1)
  if [[ $st == "" ]]
  then
echo ""
  else
if [[ $st == "nothing to commit (working directory clean)" ]]
    then
echo "%{$fg_bold[green]%}$(git_prompt_info)%{$reset_color%}"
    else
echo "%{$fg_bold[red]%}$(git_prompt_info)%{$reset_color%}"
    fi
fi
}

git_prompt_info () {
 ref=$(/usr/bin/git symbolic-ref HEAD 2>/dev/null) || return
 echo "${ref#refs/heads/}"
}

unpushed () {
  /usr/bin/git cherry -v origin/$(git_branch) 2>/dev/null
}

need_push () {
  if [[ $(unpushed) == "" ]]
  then
echo ""
  else
echo "%{$fg_bold[magenta]%}*%{$reset_color%}"
  fi
}

directory_name(){
  echo "%{$fg_bold[cyan]%}%1/%\/%{$reset_color%}"
}

export PROMPT=$'$(directory_name) %(!.#.›) '
export RPROMPT='$(git_dirty)$(need_push)'

precmd() {
  #title "zsh" "%m" "%55<...<%~"
}

if [[ -d $HOME/.rbenv ]]; then
    # per-user installation of rbenv
    export PATH="$HOME/.rbenv/bin:$PATH"
    
    # expansion of: eval "$(rbenv init -)"
    export PATH="/home/mattias/.rbenv/shims:${PATH}"
    source "/home/mattias/.rbenv/libexec/../completions/rbenv.zsh"
    rbenv rehash 2>/dev/null
    rbenv() {
      local command="$1"
      if [ "$#" -gt 0 ]; then
        shift
      fi

      case "$command" in
      shell)
        eval `rbenv "sh-$command" "$@"`;;
      *)
        command rbenv "$command" "$@";;
      esac
    }
fi

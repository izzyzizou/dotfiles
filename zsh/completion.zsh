# Completion setup. Loaded last, after everything else, since completions
# often depend on tools/aliases defined earlier.
# autoload -Uz compinit
# compinit

r(){
    cd $HOME/git-repos/$1
}
complete -W "`ls $HOME/git-repos`" r


# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

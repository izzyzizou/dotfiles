alias cls='clear'
alias py="python3"
alias c="code ."
alias v="nvim"

r(){
    cd $HOME/Documents/GitHub/$1
}
complete -W "`ls $HOME/Documents/GitHub`" r

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="random"
ZSH_THEME_RANDOM_CANDIDATES=( "apple" "robbyrussell" "agnoster" )
plugins=(git brew)
DISABLE_MAGIC_FUNCTIONS="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="mm/dd/yyyy"

source "$ZSH/oh-my-zsh.sh"

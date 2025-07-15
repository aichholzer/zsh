export ZSH=~/.oh-my-zsh
export UPDATE_ZSH_DAYS=5
export DEFAULT_USER="$(whoami)"

ZSH_THEME="aichholzer"
ZSH_THEME_AWS_PREFIX="aws:"
ZSH_THEME_AWS_SUFFIX=" "

HYPHEN_INSENSITIVE="true"
DISABLE_UPDATE_PROMPT="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd/mm/yyyy"
plugins=(git npm macos z)

source $ZSH/oh-my-zsh.sh

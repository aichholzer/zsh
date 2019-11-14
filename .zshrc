export ZSH=~/.oh-my-zsh
export UPDATE_ZSH_DAYS=5
export DEFAULT_USER="$(whoami)"

ZSH_THEME="aichholzer"
ZSH_THEME_AWS_PREFIX="aws:"
ZSH_THEME_AWS_SUFFIX=" "

HYPHEN_INSENSITIVE="true"
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd/mm/yyyy"
plugins=(git aws npm osx)

source $ZSH/oh-my-zsh.sh

### NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

### PyEnv
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export DISABLE_MAGIC_FUNCTIONS=true

# Import antigen
source /usr/share/zsh-antigen/antigen.zsh

# Load libraries.
antigen use oh-my-zsh
antigen bundles  <<EOBUNDLES
    git
    pip
    sudo
    command-not-found
    zsh-users/zsh-syntax-highlighting
    zsh-users/zsh-completions
EOBUNDLES

antigen theme mietzen/noxium@arch
antigen apply

# History settings
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
export HISTFILE=~/.history
setopt INC_APPEND_HISTORY
setopt HIST_FIND_NO_DUPS
setopt INC_APPEND_HISTORY
unsetopt EXTENDED_HISTORY
unsetopt INC_APPEND_HISTORY_TIME
unsetopt SHARE_HISTORY

## ENV
export EDITOR=nano
export LANG=en_US.UTF-8
export ANTIGEN_LOG=~/.antigen/debug.log

# Import functions
source $HOME/.zfunctions

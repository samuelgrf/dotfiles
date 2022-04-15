# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH=$HOME/repos/ohmyzsh

# Set name of the theme to load.
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment one of the following lines to change the auto-update behavior
zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$HOME/.ohmyzsh-custom

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(fast-syntax-highlighting git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# Load Powerlevel10k configuration.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ZSH options
setopt AUTO_CONTINUE HIST_FCNTL_LOCK

# Environment variables
export EDITOR='vim'
export LESS='-F -i -M -R'

# Aliases
alias bat='bat --wrap=never'
alias c='cd ~/dotfiles'
alias cpr='cp -r'
alias dso='disown'
alias du='du -h'
alias e='$EDITOR'
alias grl='git reflog'
alias grlp='git reflog -p'
alias gstlp='git stash list -p'
alias ls='ls -v --color=tty'
alias lvl='echo $SHLVL'
alias o='xdg-open'
alias rb='sudo shutdown -r'
alias rbc='sudo shutdown -c'
alias rbn='sudo shutdown -r now'
alias rgi='rg -i'
alias rld='exec zsh'
alias rmr='rm -r'
alias sd='sudo shutdown'
alias sdc='sudo shutdown -c'
alias sdn='sudo shutdown now'
alias smart='sudo smartctl -a'
alias t='tree'

# Functions
inc() {
  [ -n "$HISTFILE" ] && {
    echo "Enabled incognito mode"
    unset HISTFILE
  } || {
    echo "Disabled incognito mode"
    exec zsh
  }
}
mcd() { mkdir -p "$1" && cd "$1" }

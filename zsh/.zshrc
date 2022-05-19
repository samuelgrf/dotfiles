source ${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-$USER.zsh 2>/dev/null
source ~/.ohmyzsh.zsh
source ~/.p10k.zsh

# ZSH options
setopt AUTO_CONTINUE HIST_FCNTL_LOCK

# Environment variables
export EDITOR='vim'
export LESS='-F -i -M -R'
export PATH="$HOME/.local/bin:$PATH"

# Aliases
alias bat='bat --wrap=never'
alias c='cd ~/dotfiles'
alias cpr='cp -r'
alias dso='disown'
alias du='du -h'
alias e="$EDITOR"
alias grl='git reflog'
alias grlp='git reflog -p'
alias gstlp='git stash list -p'
alias ls='ls -v --color=tty'
alias lvl="echo $SHLVL"
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
alias se='sudoedit'
alias smart='sudo smartctl -a'
alias sudo='sudo '
alias t='tree'

# Functions
inc() {
  [ -n "$HISTFILE" ] && {
    echo 'Enabled incognito mode'
    unset HISTFILE
  } || {
    echo 'Disabled incognito mode'
    exec zsh
  }
}
mcd() { mkdir -p "$1" && cd "$1" }

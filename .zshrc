# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory complete_in_word autocd

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# System aliases
alias grep='grep --color=auto'
alias ll='ls -la -h --color=auto'
alias ls='ls --color=auto -h'

# Android related aliases
alias alog='adb logcat'
alias alogs='adb logcat -s'
alias als='adb shell ls -la'

# Git related aliases
alias ga='git add'
alias gb='git branch'
alias gc='git checkout'
alias gcm='git commit'
alias gd='git diff'
alias gdc='git diff --cached'
alias gf='git fetch'
alias gfp='git fetch -p'
alias gl='git log'
alias gm='git merge'
alias gmt='git mergetool'
alias gp='git push'
alias gr='git rebase'
alias gres='git reset'
alias grev='git revert'
alias gs='git status'
alias gsh='git show'
alias gsub='git submodule'
alias gsubu='git submodule update'

source $HOME/.profile


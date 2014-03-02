# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
DEFAULT_USER="dmitry"
ZSH_THEME="afowler"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew encode64 extract git mercurial mvn scala sbt)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

fpath=($HOME/.zsh/completions $fpath)
autoload -U compinit
compinit

setopt histignorealldups sharehistory complete_in_word autocd

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b ~/.dircolors)"
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
alias gaf='git add -f'
alias gap='git add -p'
alias gapf='git add -p -f'
alias gb='git branch'
alias gc='git checkout'
alias gcm='git commit'
alias gd='git diff'
alias gdc='git diff --cached'
alias gf='git fetch'
alias gfp='git fetch -p'
alias gl='git log'
alias glu='git log -u'
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


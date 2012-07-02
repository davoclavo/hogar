#
# Sets Oh My Zsh options.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

#To fix omz: one or more keys are non-bindable
export TERM=xterm-256color

# Set the key mapping style to 'emacs' or 'vi'.
zstyle ':omz:module:editor' keymap 'emacs'

# Auto convert .... to ../..
zstyle ':omz:module:editor' dot-expansion 'no'

# Set case-sensitivity for completion, history lookup, etc.
zstyle ':omz:*:*' case-sensitive 'no'

# Color output (auto set to 'no' on dumb terminals).
zstyle ':omz:*:*' color 'yes'

# Auto set the tab and window titles.
zstyle ':omz:module:terminal' auto-title 'yes'

# Set the Zsh modules to load (man zshmodules).
# zstyle ':omz:load' zmodule 'attr' 'stat'

# Set the Zsh functions to load (man zshcontrib).
# zstyle ':omz:load' zfunction 'zargs' 'zmv'

# Set the Oh My Zsh modules to load (browse modules).
# The order matters.
zstyle ':omz:load' omodule \
  'environment' \
  'terminal' \
  'editor' \
  'history' \
  'directory' \
  'spectrum' \
  'utility' \
  'completion' \
  'prompt' \
  'osx' \
  'python' \
  'git' \
  'syntax-highlighting' 

# Set the prompt theme to load.
# Setting it to 'random' loads a random theme.
# Auto set to 'off' on dumb terminals.
zstyle ':omz:module:prompt' theme 'sorin'

# This will make you shout: OH MY ZSHELL!
source "$OMZ/init.zsh"

# Customize to your needs...

function sourceprofile(){
 source ~/.zshrc
}

#Python startup file
. ~/django_env_functions.sh

export PYTHONSTARTUP=$HOME/.pythonstartup

function adler(){
 phantomjs --web-security=no adler.js $1;
}
export PATH=/Applications/microchip/mplabc30/v3.30b/bin:$PATH

#Navigation
alias ~="cd ~"
alias ..="cd .."
alias ...="cd ../.."
alias drop="cd ~/Dropbox/"
alias tagger="cd ~/Dev/tagger"

#IPs
alias ip="curl ifconfig.me"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

#Display CPU usage stats for commands taking more than 5s
REPORTTIME=5

insert-sudo () {
  BUFFER="sudo $BUFFER"
  CURSOR=$#BUFFER
}
zle -N insert-sudo
bindkey '^x' insert-sudo

# search on up/down arrow if a partial cmd is entered, otherwise browse history
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

# Preventivo
alias 'rm=rm -i'
alias 'mv=mv -i'
alias 'cp=cp -i'

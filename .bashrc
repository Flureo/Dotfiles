#
# ~/.bashrc
#

[[ $- != *i* ]] && return

black='\[\033[01;30m\]'   # Black
red='\[\033[01;31m\]'   # Red
green='\[\033[01;32m\]'   # Green
yellow='\[\033[01;33m\]'   # Yellow
blue='\[\033[01;34m\]'   # Blue
purple='\[\033[01;35m\]'   # Purple
cyan='\[\033[01;36m\]'   # Cyan
white='\[\033[01;37m\]'   # White
reset='\[\033[00m\]'      # Reset

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'

PS1='╭ '${purple}'\w'${reset}'\n╰—> '${green}'\$'${reset}' '


#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -la --color=auto'
alias grep='grep --color=auto'
alias x='startx'
alias e='exit'
alias r='ranger'
alias vi='nvim'
alias c='clear'
alias n='neofetch'
alias b='btop'
PS1='[\u@\h \W]\$ '
export https_proxy=http://127.0.0.1:7890
export http_proxy=http://127.0.0.1:7890
export all_proxy=socks5://127.0.0.1:7890
export EDITOR=nvim

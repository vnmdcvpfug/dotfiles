#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias s='sudo pacman -S'
alias sc='sudo pacman -Sc'
alias se='pacman -Ss'
alias syu='sudo pacman -syu'
alias rns='sudo pacman -Rns'
alias qq='pacman -Qq'
alias nv='nvim'
alias d='nvim ~/Daily/$(date "+%Y%m%d")'
alias t='python Scripts/trashcan.py'

PS1='[\u@\h \W]\$ '

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias s='sudo pacman -S'
alias rns='sudo pacman -Rns'
alias syu='sudo pacman -Syu'
alias sc='sudo pacman -Sc'
alias nv='nvim'
alias d='nvim ~/Daily/$(date "+%Y%m%d")'

alias t='python Scripts/trashcan.py'

PS1='[\u@\h \W]\$ '

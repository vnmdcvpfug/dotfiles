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
alias syu='sudo pacman -Syu'
alias rns='sudo pacman -Rns'
alias qq='pacman -Qq'
alias nv='nvim'
alias t='python scripts/trashcan.py'
alias h='hyprland'

PS1='[\u@\h \W]\$ '

export http_proxy="socks5://127.0.0.1:9050"
export https_proxy="socks5://127.0.0.1:9050"

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -a'
alias grep='grep --color=auto'
alias s='sudo pacman -S'
alias sc='sudo pacman -Sc'
alias se='pacman -Ss'
alias syu='sudo pacman -Syu'
alias rns='sudo pacman -Rns'
alias qq='pacman -Qq'
alias h='hyprland'
gitall() {
  git add . && git commit -m "$*" && git push origin main
}
g() {
  cd $1 && ls -a
}
alias gg='cd .. && ls -a'
alias bat='cat /sys/class/power_supply/BAT1/capacity'

PS1='> '

export http_proxy="socks5h://127.0.0.1:9050"
export https_proxy="socks5h://127.0.0.1:9050"
export ftp_proxy="socks5h://127.0.0.1:9050"
export rsync_proxy="socks5h://127.0.0.1:9050"
export all_proxy="socks5h://127.0.0.1:9050"

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias a='ls -a'
alias la='ls -la'
alias grep='grep --color=auto'
alias s='sudo pacman -S'
alias sc='sudo pacman -Sc'
alias se='pacman -Ss'
alias syu='sudo pacman -Syu'
alias rns='sudo pacman -Rns'
alias qq='pacman -Qq'
alias h='hyprland'
g() {
  cd $1 && ls -a
}
alias gg='cd .. && ls -a'
alias bat='cat /sys/class/power_supply/BAT1/capacity'
alias temp='cat /sys/class/thermal/thermal_zone0/temp'
bton() {
  sudo systemctl enable --now bluetooth && bluetoothctl connect $(sudo cat ~/dotfiles/device)
}
alias btoff='sudo systemctl disable --now bluetooth'
alias dn='nvim ~/notes/10_daily/$(date +%m-%d-%Y)'
alias t='date "+%A, %B %d, %Y, %H:%M"'

PS1='> '

#export http_proxy="socks5h://127.0.0.1:9050"
#export https_proxy="socks5h://127.0.0.1:9050"
#export ftp_proxy="socks5h://127.0.0.1:9050"
#export rsync_proxy="socks5h://127.0.0.1:9050"
#export all_proxy="socks5h://127.0.0.1:9050"
#export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"

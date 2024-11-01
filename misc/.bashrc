#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

## ALIAS ##
alias syu='sudo pacman -Syu'
alias yaysyu='yay -Syu --aur'
alias clean='paccache -rk0 -v'
alias orphans='pacman -Qtdq | sudo pacman -Rns -'
alias ls='ls -la --color=auto'
alias grep='grep --color=auto'
alias nohistory='history -c && history -w'
alias fetch='fastfetch'

#eval "$(starship init bash)"
#cat ~/.cache/wal/sequences

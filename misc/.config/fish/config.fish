if status is-interactive
    set -g fish_greeting
end

function fish_prompt
    echo -n (set_color -o red)'['
    echo -n (set_color -o yellow)"$USER"
    echo -n (set_color -o green)'@'
    echo -n (set_color -o blue)(hostname -s)
    echo -n ' '
    echo -n (set_color -o magenta)(basename "$PWD")
    echo -n (set_color -o red)']'
    echo -n (set_color -o white)'$ '
    set_color normal
end

# Aliases
alias syu='sudo pacman -Syu'
alias yaysyu='yay -Syu --aur'
alias clean='paccache -rk0 -v'
alias orphans='pacman -Qtdq | sudo pacman -Rns -'
alias ls='ls -la --color=auto'
alias grep='grep --color=auto'
alias nohistory='history clear; history save'
alias fetch='fastfetch'

# Starship prompt
starship init fish | source

# Autostart X at login
if test -z "$DISPLAY"; and test "$XDG_VTNR" = 1
    exec startx
end

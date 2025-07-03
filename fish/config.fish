if status is-interactive
    set -gx EDITOR vim
    # fish_add_path "/opt/local/bin/"
    fish_add_path /usr/local/bin
    fish_add_path ~/.local/bin/
    fish_add_path ~/.local/bin/scripts/
    fish_add_path ~/.local/bin/scripts/parser/
    fish_add_path ~/.local/bin/scripts/spotify_to_tidal/
    fish_add_path ~/.ghcup/bin/
    fish_add_path /Library/Frameworks/Python.framework/Versions/3.13/lib/python3.13/site-packages
    set -g fish_greeting
    set -g fish_key_bindings fish_vi_key_bindings

    function mkcd --description 'cd to created directory'
        mkdir $argv && cd $argv
    end

    bind --mode insert ctrl-o 'yy'
    bind --mode insert ctrl-k 'fzfnvim'

    function yy --description 'yazi quit on directory'
        set tmp (mktemp -t "yazi-cwd.XXXXXX")
        yazi $argv --cwd-file="$tmp"
        if test -f "$tmp"
            set cwd (cat "$tmp")
            if test -n "$cwd"; and test "$cwd" != "$PWD"
                cd "$cwd"
            end
        end
        rm -f "$tmp"
    end

    alias wifi="nmcli device wifi"
    alias reboot="systemctl reboot"

    alias py="python"
    alias g++f="g++ -std=gnu++11 -g -O2 -Wconversion -Wshadow -Wall -Wextra -D_GLIBCXX_DEBUG"

    alias ..="cd .."
    alias ...="cd ../.."
    alias rm="rm -v"

    alias fishedit="nvim ~/.config/fish/config.fish"

    alias n="nvim"
    alias sn="sudoedit"

    alias l="eza "
    alias la="eza -a"
    alias ll="eza -al"
    alias lt="eza -T"

    alias tr="trash-put"
    alias trr="trash-restore"
    alias icat="kitty +kitten icat"
    # alias sp="sudo pacman"
    # alias sps="sudo pacman -S"
    alias sp="sudo powerpill"
    alias sps="sudo powerpill -S"
    alias du="du -sh"
    alias df="df -h"
    alias sdu="sudo du -sh"
    alias keysoup="sudo systemctl restart keyd"

    # Git aliases
    alias g="git"
    alias gs="git status"
    alias ga="git add"
    alias gall="git add --all"
    alias gc="git commit"
    alias gcall="git commit -a -m \"🦎\""
    alias gcp="git commit -a -m \"🦎\" && git push"

    alias b="bat -p"

    zoxide init fish | source
end

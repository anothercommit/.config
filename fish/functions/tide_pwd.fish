function tide_pwd --description 'Displays only the current directory'
    set_color $tide_pwd_color
    echo -n (basename $PWD)
    set_color normal
end

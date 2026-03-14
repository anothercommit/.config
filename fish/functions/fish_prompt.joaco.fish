function fish_prompt
    set_color $fish_color_cwd
    set -l last_status $status
    echo -n (path basename $PWD)
    set_color normal
    echo -n ' -> '
end


function fish_prompt
    set -l last_status $status
    # iTerm displays path in the modeline, so we only display the base
    # name in the prompt. echo -n (prompt_pwd)
    echo -n (basename (prompt_pwd))
    echo -n "/ "
    if test $last_status = 0
        set_color green
        echo -n "吉"
    else
        set_color red
        echo -n "凶"
    end
    set_color normal
    echo -n "> "
end

# z.lua
source (lua ~/attic/z.lua/z.lua --init fish | psub)
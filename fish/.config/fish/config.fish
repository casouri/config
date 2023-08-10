
function fish_prompt
    set -l last_status $status
    # iTerm displays path in the modeline, so we only display the base
    # name in the prompt.
    echo -n (basename (prompt_pwd))
    echo -n " "
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

function fish_title
    # Set window title, see https://gist.github.com/phette23/5270658
    # Need to set "Applications in terminal my change the title".
    echo -ne (basename (pwd))
end

source ~/.alias
set -x LD_LIBRARY_PATH /opt/local/lib
set -x GOBIN "/Users/yuan/go/bin"
set -x PKG_CONFIG_PATH /usr/local/lib/pkgconfig
fish_add_path ~/bin ~/.local/bin /opt/local/sbin /opt/local/bin $GOBIN ~/Library/Python/3.10/bin

# set APPLE_SDK (xcrun --show-sdk-path)
# set -x CPATH ".:$APPLE_SDK/usr/include:/opt/local/include"
set -x SDKROOT (xcrun --show-sdk-path)

function condainit

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/yuan/opt/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

end

# Set env

export MANPATH="${manpath}"

## Tools
export VISUAL=e # emacsclient in ~/bin
export EDITOR="$VISUAL"
export BROWSER=open

## Python 3.9
export PIPENV_VENV_IN_PROJECT=true

## Cheat
export CHEATCOLORS=true

# Include path
export APPLE_SDK="$(xcrun --show-sdk-path)"
export CPATH=".:$APPLE_SDK/usr/include:/opt/local/include"
export C_INCLUDE_PATH="${CPATH}"
export CPLUS_INCLUDE_PATH=/Library/Developer/CommandLineTools/usr/include/c++/v1

# info path
export INFOPATH="~/emacs/info:/opt/local/share/info:/usr/local/share/info:/usr/share/info"
. "$HOME/.cargo/env"

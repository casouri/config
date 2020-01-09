# Set env

## locale
# export LANG="en_US.UTF-8"

# macport
export PATH="/Users/yuan/bin/:/opt/local/bin:/opt/local/sbin:$PATH"
export MANPATH="/opt/local/share/man:$MANPATH"

## texinfo
export PATH="$PATH:/usr/local/opt/texinfo/bin"

## Tools
export VISUAL=e # emacsclient in ~/bin
export EDITOR="$VISUAL"
export BROWSER=open

## Python 3.8
export PATH="$PATH:/Users/yuan/Library/Python/3.8/bin"
export PIPENV_VENV_IN_PROJECT=true

## Rust
export PATH="$PATH:$HOME/.cargo/bin"

## TeX
export PATH="$PATH:/Library/TeX/texbin/"

## GNU
export PATH="$PATH:/usr/local/opt/make/libexec/gnubin"
export MANPATH="$MANPATH:/usr/local/opt/make/libexec/gnuman"

## Cheat
export CHEATCOLORS=true

## pdf-tools
export PKG_CONFIG_PATH="/usr/local/Cellar/zlib/1.2.8/lib/pkgconfig:/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig"

# Include path
export APPLE_SDK="$(xcrun --show-sdk-path)"
export CPATH="$APPLE_SDK/usr/include"

# info path
export INFOPATH="/opt/local/share/info:/usr/local/share/info:/usr/share/info"

# Alias

alias ac="aria2c"
alias ls="ls -G"
alias ll="ls -lG"
alias la="ls -alG"
alias ..="cd .."
# download whole site
alias get-site="wget -r -np"
# tex package manager
alias texpkg="tlmgr"
alias ccl="/Applications/Clozure\ CL.app/Contents/MacOS/dx86cl64"

# Set env

## locale
export LANG="en_US.UTF-8"

## ensure /usr/local/bin
export PATH="/usr/local/bin/:/Users/yuan/bin/:$PATH"

## Java
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8.0_144)
export DERBY_HOME="$JAVA_HOME/db"
export PATH="$PATH:$JAVA_HOME"
# add lsp for eglot
export CLASSPATH=".:/Users/yuan/attic/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository/plugins/org.eclipse.equinox.launcher_1.5.200.v20180922-1751.jar"

## Tools
export VISUAL=vim
export EDITOR="$VISUAL"
export BROWSER=open

## Python 3.7
export PATH="$PATH:/usr/local/lib/python3.7:/usr/local/lib/python3.7/site-packages"
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
export PKG_CONFIG_PATH=/usr/local/Cellar/zlib/1.2.8/lib/pkgconfig:/usr/local/lib/pkgconfig:/opt/X11/lib/pkgconfig

## llvm/clang
export PATH="/usr/local/opt/llvm/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"


# Alias

alias ac="aria2c"
alias f="fzf"
alias ec="emacsclient -a emacs"
alias ls="ls -G"
alias ll="ls -lG"
alias la="ls -alG"
alias ..="cd .."
# download whole site
alias get-site="wget -r -np"
# tex package manager
alias texpkg="tlmgr"


# Emacs

if [ -v INSIDE_EMACS ]; then
    # use cat as pager in Emacs
    export PAGER=cat
    # use more color
    export TERM=xterm-256color
fi

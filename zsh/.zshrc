# https://wiki.archlinux.org/index.php/Zsh

### z.lua

# https://github.com/skywind3000/z.lua
eval "$(lua ~/.zsh/z.lua/z.lua --init zsh)"
# enhanced match
export _ZL_MATCH_MODE=1

### autosuggest

# https://github.com/zsh-users/zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

### History substring search

source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

### Prompt

# http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html
# single quote or "!" is expanded for history
# export PROMPT='%~/ %(?.∠( ᐛ 」∠%)_._(´ཀ`」∠%)_) %(!.!.>) '
# 141 is 265 color code for a light purple
export PROMPT='%F{141}%~/%f %(?.吉.%F{red}凶%f) %(!.!.%F{141}>%f) '
# iTerm displays path in status bar
if [ "$TERM_PROGRAM" = 'iTerm.app' ]
then export PROMPT='%F{141}%1d/%f %(?.吉.%F{red}凶%f) %(!.!.%F{141}>%f) '
fi


### History

# https://github.com/sorin-ionescu/prezto/blob/master/modules/history/init.zsh
export HISTSIZE=10000         # The maximum number of events to save in the internal history.
export SAVEHIST=10000         # The maximum number of events to save in the history file.
export HISTFILE=~/.zhistory
setopt BANG_HIST              # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY       # Write the history file in the ':start:elapsed;command' format.
setopt SHARE_HISTORY          # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS       # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS   # Delete an old recorded event if a new event is a duplicate.
setopt HIST_FIND_NO_DUPS      # Do not display a previously found event.
setopt HIST_IGNORE_SPACE      # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS      # Do not write a duplicate event to the history file.
setopt HIST_VERIFY            # Do not execute immediately upon history expansion.
setopt HIST_BEEP              # Beep when accessing non-existent history.

### Syntax highlight

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

### bind key

bindkey -e

# completion menu
autoload -Uz compinit
compinit
zstyle ":completion:*" menu select

## options
setopt COMPLETE_IN_WORD    # Complete from both ends of a word.
setopt ALWAYS_TO_END       # Move cursor to the end of a completed word.
setopt PATH_DIRS           # Perform path search even on command names with slashes.
setopt AUTO_MENU           # Show completion menu on a successive tab press.
setopt AUTO_LIST           # Automatically list choices on ambiguous completion.
setopt AUTO_PARAM_SLASH    # If completed parameter is a directory, add a trailing slash.
setopt EXTENDED_GLOB       # Needed for file modification glob modifiers with compinit
unsetopt MENU_COMPLETE     # Do not autoselect the first completion entry.
unsetopt FLOW_CONTROL      # Disable start/stop characters in shell editor.

## Group matches and describe.
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*:matches' group 'yes'
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:options' auto-description '%d'
zstyle ':completion:*:corrections' format ' %F{green}-- %d (errors: %e) --%f'
zstyle ':completion:*:descriptions' format ' %F{yellow}-- %d --%f'
zstyle ':completion:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*:warnings' format ' %F{red}-- no matches found --%f'
zstyle ':completion:*:default' list-prompt '%S%M matches%s'
zstyle ':completion:*' format ' %F{yellow}-- %d --%f'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' verbose yes

## extra completion
fpath=(~/.zsh/zsh-completions/src/ $fpath)

# autosuggest
# https://github.com/zsh-users/zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

# history substring search
source ~/.zsh/zsh-history-substring-seach/zsh-history-substring-search.zsh

# prompt
# single quote or "!" is expanded for history
# export PROMPT='%~/ %(?.∠( ᐛ 」∠%)_._(´ཀ`」∠%)_) %(!.!.>) '
export PROMPT='%~/ %(?.OK.XX) %(!.!.>) '

# bind key
bindkey -e

# history
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



# alias

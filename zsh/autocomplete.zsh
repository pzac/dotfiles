# Mostly taken from oh-my-zsh

# initialize completion for the current session
autoload -U compinit && compinit

setopt always_to_end # Always place the cursor to the end of the word completed
setopt auto_menu # show completion menu on succesive tab press. needs unsetop menu_complete to work
unsetopt menu_complete # do not autoselect the first completion entry
setopt complete_in_word # Allow completion from within a word/phrase


WORDCHARS='' # string of characters which are also part of a word

# The zsh/complist module offers three extensions to completion listings: the ability
# to highlight matches in such a list, the ability to scroll through long lists and a
# different style of menu completion.
zmodload -i zsh/complist


# Use caching so that commands like apt and dpkg complete are useable
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path $ZSH/cache/

# process completion
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
zstyle ':completion:*:*:*:*:processes' command "ps -u `whoami` -o pid,user,comm -w -w"

# complete also partial matches
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'


# Stuff we can probaby do without
# unsetopt flowcontrol

# should this be in keybindings?
# bindkey -M menuselect '^o' accept-and-infer-next-history


## case-insensitive (all),partial-word and then substring completion
# if [ "x$CASE_SENSITIVE" = "xtrue" ]; then
#   zstyle ':completion:*' matcher-list 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
#   unset CASE_SENSITIVE
# else
#   zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
# fi

# zstyle ':completion:*' list-colors ''
# zstyle ':completion:*:*:*:*:*' menu select

zstyle ':completion:*:cd:*' tag-order local-directories directory-stack path-directories

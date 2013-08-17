source $HOME/dotfiles/common/aliases
source $HOME/dotfiles/common/env
unsetopt correct_all

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

setopt auto_cd
cdpath=(~ ~/Sites ~/Projects)

autoload -U compinit && compinit

# PROMPT
autoload -U colors && colors
export PROMPT="%{$fg_bold[blue]%}%~ » %{$reset_color%}"

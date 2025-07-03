export DOTFILES_HOME=~/code/dotfiles

source $DOTFILES_HOME/common/aliases
source $DOTFILES_HOME/common/exports

source $DOTFILES_HOME/zsh/options.zsh
source $DOTFILES_HOME/zsh/autocomplete.zsh
# source $DOTFILES_HOME/zsh/history.zsh
# source $DOTFILES_HOME/zsh/pzac-prompt.zsh
source $DOTFILES_HOME/zsh/misc.zsh
source $DOTFILES_HOME/zsh/key-bindings.zsh

# ASDF
#
# if [ -d "$HOME/.asdf" ]; then
#   source $HOME/.asdf/asdf.sh
# fi

# RBENV
#
# export PATH="$HOME/.rbenv/bin:$PATH"
# whence rbenv > /dev/null && eval "$(rbenv init -)"

# PYENV
#
# whence pyenv > /dev/null && eval "$(pyenv init -)"

# MISE
#
whence mise > /dev/null && eval "$(mise activate zsh)"

# NVM
#
# [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"

# Starship (prompt)
#
eval "$(starship init zsh)"

# Atuin (history)
#
eval "$(atuin init zsh --disable-up-arrow)"

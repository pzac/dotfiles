source $HOME/.dotfiles/common/aliases
source $HOME/.dotfiles/common/exports

source $HOME/.dotfiles/zsh/colors.zsh
source $HOME/.dotfiles/zsh/options.zsh
source $HOME/.dotfiles/zsh/autocomplete.zsh
source $HOME/.dotfiles/zsh/history.zsh
source $HOME/.dotfiles/zsh/pzac-prompt.zsh
source $HOME/.dotfiles/zsh/misc.zsh
source $HOME/.dotfiles/zsh/key-bindings.zsh

export PATH="$HOME/.rbenv/bin:$PATH"
whence rbenv > /dev/null && eval "$(rbenv init -)"
whence pyenv > /dev/null && eval "$(pyenv init -)"

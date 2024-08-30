export DOTFILES_HOME=~/code/dotfiles

source $DOTFILES_HOME/common/aliases
source $DOTFILES_HOME/common/exports

source $DOTFILES_HOME/zsh/colors.zsh
source $DOTFILES_HOME/zsh/options.zsh
source $DOTFILES_HOME/zsh/autocomplete.zsh
source $DOTFILES_HOME/zsh/history.zsh
source $DOTFILES_HOME/zsh/pzac-prompt.zsh
source $DOTFILES_HOME/zsh/misc.zsh
source $DOTFILES_HOME/zsh/key-bindings.zsh

if [ -d "$HOME/.asdf" ]; then
  source $HOME/.asdf/asdf.sh
fi

if [ -d /opt/local/share/fzf/shell ]; then
  source /opt/local/share/fzf/shell/key-bindings.zsh
  source /opt/local/share/fzf/shell/completion.zsh
fi

export PATH="$HOME/.rbenv/bin:$PATH"
whence rbenv > /dev/null && eval "$(rbenv init -)"
whence pyenv > /dev/null && eval "$(pyenv init -)"
# [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"

source $DOTFILES_HOME/zsh/git-prompt.zsh

POWERLINE=1

RESET="$reset_color"

if [[ "$POWERLINE" == 1 ]]; then
  _PROMPT=$'%K{190}%F{22} %~ %F{190}%K{22}\uE0B0 %F{190} $(git_prompt_string) %{$RESET%}%F{22}\uE0B0 %{$RESET%}'
else
  _PROMPT='%F{196}%~ %F{214}$(git_prompt_string) %F{226}» %{$RESET%}'
fi

if [[ "$OSTYPE" == "darwin"* ]]; then
  export PROMPT="$_PROMPT"
else
  export PROMPT="[%n@%m] $_PROMPT"
fi

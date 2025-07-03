source $DOTFILES_HOME/zsh/git-prompt.zsh

RESET="$reset_color"

_PROMPT='%F{196}%~ %F{214}$(git_prompt_string) %F{226}» %{$RESET%}'

if [[ "$OSTYPE" == "darwin"* ]]; then
  export PROMPT="$_PROMPT"
else
  export PROMPT="[%n@%m] $_PROMPT"
fi

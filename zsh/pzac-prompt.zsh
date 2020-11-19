source $HOME/.dotfiles/zsh/git-prompt.zsh

if [[ "$OSTYPE" == "darwin"* ]]; then
  export PROMPT='%F{196}%~ %F{214}$(git_prompt_string) %F{226}» %{$RESET%}'
else
  export PROMPT='[%n@%m] %F{196}%~ %F{214}$(git_prompt_string) %F{226}%# %{$RESET%}'
fi

source $HOME/.dotfiles/zsh/git-prompt.zsh
# source $HOME/.dotfiles/zsh/prompt-command-duration.zsh

export PROMPT='%F{033}%~ %F{030}$(git_prompt_string) %F{226}» %{$RESET%}'

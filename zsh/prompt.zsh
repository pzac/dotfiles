export PROMPT='%F{033}%~ %F{030}$(git_prompt_string) %F{226}» %{$RESET%}'
# %T = HH:MM
# %* = HH:MM:SS
# export RPROMPT='%F{111}%*%{$RESET%}'

# see https://coderwall.com/p/kmchbw/zsh-display-commands-runtime-in-prompt
#
function preexec() {
  timer=${timer:-$SECONDS}
}

function precmd() {
  if [ $timer ]; then
    timer_show=$(($SECONDS - $timer))
    export RPROMPT="%F{cyan}${timer_show}s %{$reset_color%}"
    unset timer
  fi
}

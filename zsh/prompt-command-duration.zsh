# Comment out the two functions for RPROMPT
# see https://coderwall.com/p/kmchbw/zsh-display-commands-runtime-in-prompt
#
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

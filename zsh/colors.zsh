autoload -U colors && colors

for COLOR in RED GREEN YELLOW BLUE MAGENTA CYAN BLACK WHITE; do
  eval PR_$COLOR='%{$fg_no_bold[${(L)COLOR}]%}'
  eval PR_BOLD_$COLOR='%{$fg_bold[${(L)COLOR}]%}'
done
eval RESET='$reset_color'
export PR_RED      PR_GREEN      PR_YELLOW      PR_BLUE      PR_WHITE      PR_BLACK
export PR_BOLD_RED PR_BOLD_GREEN PR_BOLD_YELLOW PR_BOLD_BLUE PR_BOLD_WHITE PR_BOLD_BLACK

# https://github.com/robbyrussell/oh-my-zsh/blob/master/lib/spectrum.zsh

typeset -Ag FX FG BG

FX=(
    reset "%{[00m%}"
    bold "%{[01m%}" no-bold "%{[22m%}"
    italic "%{[03m%}" no-italic "%{[23m%}"
    underline "%{[04m%}" no-underline "%{[24m%}"
    blink "%{[05m%}" no-blink "%{[25m%}"
    reverse "%{[07m%}" no-reverse "%{[27m%}"
)

for color in {000..255}; do
FG[$color]="%{[38;5;${color}m%}"
    BG[$color]="%{[48;5;${color}m%}"
done

# Show all 256 colors with color number
function spectrum_ls() {
  for code in {000..255}; do
print -P -- "$code: %F{$code}Test%f"
  done
}


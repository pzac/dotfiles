export DOTFILES_HOME=~/code/dotfiles

source $DOTFILES_HOME/common/aliases
source $DOTFILES_HOME/common/exports

alias cl="lc"

function lc () {
   if [ $# = 0 ]; then
      cd && ls
   else
      cd "$*" && ls
   fi
}

#source /opt/local/etc/bash_completion.d/git
export GIT_PS1_SHOWDIRTYSTATE=1
login_and_host="\u${RED}\h${NO_COLOUR}:"
curr_dir="${YELLOW}\w${NO_COLOUR}"
git_info='$(__git_ps1 " (%s)")'
export PS1="${login_and_host}${curr_dir}${GREEN}${git_info}${NO_COLOUR}\n\$ "

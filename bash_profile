export PATH=/opt/local/bin:/opt/local/sbin:/Library/PostgreSQL8/bin:$PATH

WHITE="\[\033[01;37m\]"
RED="\[\033[0;31m\]"
GREEN="\[\033[0;32m\]"
YELLOW="\[\033[01;33m\]"
LGRAY="\[\033[0;37m\]"
PURPLE="\[\033[0;35m\]"
DGRAY="\[\033[01;30m\]"
NO_COLOUR="\[\033[0m\]"
 
alias ls="ls -G -hF"
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"
alias ll="ls -Al"
alias cd..="cd .."
alias la="ls -a"
alias c="cd .."
alias grep="grep --color=auto"


alias cl="lc"
alias be="bundle exec"

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

export EDITOR="/usr/bin/mate -w"

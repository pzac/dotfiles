function _update_ps1()
{
    export PROMPT="$(~/.dotfiles/bin/powerline-zsh.py $?)"
}

precmd()
{
    _update_ps1
}

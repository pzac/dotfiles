#!/bin/sh

HERE=$(pwd)

ln -sf "${HERE}/irbrc" ~/.irbrc
ln -sf "${HERE}/editrc" ~/.editrc
ln -sf "${HERE}/bash_profile" ~/.bash_profile
ln -sf "${HERE}/gitconfig" ~/.gitconfig
ln -sf "${HERE}/gitignore_global" ~/.gitignore_global
ln -sf "${HERE}/gemrc" ~/.gemrc
ln -sf "${HERE}/tmux".conf ~/.tmux.conf
ln -sf "${HERE}/vimrc" ~/.vimrc
ln -sf "${HERE}/zshrc" ~/.zshrc
ln -sf "${HERE}/ackrc" ~/.ackrc
ln -sf "${HERE}/vim" ~/.vim
ln -sf "${HERE}/psqlrc" ~/.psqlrc
ln -sf "${HERE}/bin" ~/bin
ln -sf "${HERE}/pryrc" ~/.pryrc


if [[ "$OSTYPE" == "darwin"* ]]; then
  ln -sf "${HERE}/Preferences.sublime-settings"  ~/Library/Application\ Support/Sublime\ Text/Packages/User/
  ln -sf "${HERE}/Default (OSX).sublime-keymap" ~/Library/Application\ Support/Sublime\ Text/Packages/User/
  ln -sf "${HERE}/sublime/bp.sublime-snippet"  ~/Library/Application\ Support/Sublime\ Text/Packages/User/
  ln -sf "${HERE}/sublime/better-do-end.sublime-snippet"  ~/Library/Application\ Support/Sublime\ Text/Packages/User/
  ln -sf "${HERE}/sublime/Merge.sublime-theme"  ~/Library/Application\ Support/Sublime\ Merge/Packages/User/
fi

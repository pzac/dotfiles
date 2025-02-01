#!/bin/bash

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
ln -sf "${HERE}/psqlrc" ~/.psqlrc
ln -sf "${HERE}/pryrc" ~/.pryrc

mkdir -p ~/.config/
ln -sf "${HERE}/starship.toml" ~/.config/starship.toml

mkdir -p ~/.config/ghostty
ln -sf "${HERE}/ghostty/config" ~/.config/ghostty/config

mkdir -p ~/.config/atuin
ln -sf "${HERE}/atuin/config.toml" ~/.config/atuin/config.toml

mkdir -p ~/.config/zed
ln -sf "${HERE}/zed/settings.json" ~/.config/zed/settings.json
ln -sf "${HERE}/zed/keymap.json" ~/.config/zed/keymap.json
ln -sf "${HERE}/zed/snippets" ~/.config/zed/snippets

if [[ "$OSTYPE" == "darwin"* ]]; then
  ln -sf "${HERE}/Preferences.sublime-settings"  ~/Library/Application\ Support/Sublime\ Text/Packages/User/
  ln -sf "${HERE}/sublime/Merge.sublime-theme"  ~/Library/Application\ Support/Sublime\ Merge/Packages/User/
fi

#! /usr/bin/env bash

config_files=(".bashrc" ".inputrc" ".vimrc" ".gitconfig" ".gitignore")

for f in ${config_files[*]}; do
  dotfile="$HOME/$f"
  if [ -f "$dotfile" ]
  then
    echo "start to backup $f"
    mv "$dotfile" "$dotfile"_bak
  fi

  if [ ! -L "$dotfile" ]
  then
    echo "soft link $f not exist, start to create"
    current_path=$(pwd)
    ln -s "$current_path/$f" "$dotfile"
  fi
done

echo "start to activate dotfile"
bind -f ~/.inputrc
. ~/.bashrc
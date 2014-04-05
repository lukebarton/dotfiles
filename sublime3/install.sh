#!/bin/sh

# symlink settings in
sublime_dir=~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User

src="`pwd`Default (OSX).sublime-keymap"
dest="$sublime_dir/Default (OSX).sublime-keymap"
if [[ -h "$dest" ]]
then
  rm "$dest"
elif [[ -e "$dest" ]]
then
  mv "$dest" "$dest.bak"
fi
ln -s "$src" "$dest"

src="`pwd`Preferences.sublime-settings"
dest="$sublime_dir/Preferences.sublime-settings"
if [[ -h "$dest" ]]
then
  rm "$dest"
elif [[ -e "$dest" ]]
then
  mv "$dest" "$dest.bak"
fi
ln -s "$src" "$dest"

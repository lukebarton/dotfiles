#!/bin/sh

# symlink settings in
sublime_dir=~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
this_dir=$DOTFILES/sublime3

brew cask install sublime-text3

# Launch Sublime to get the directories init'd
open ~/Applications/Sublime\ Text.app

src="$this_dir/Default (OSX).sublime-keymap"
dest="$sublime_dir/Default (OSX).sublime-keymap"
if [[ -h "$dest" ]]
then
  rm "$dest"
elif [[ -e "$dest" ]]
then
  mv "$dest" "$dest.bak"
fi
ln -s "$src" "$dest"

src="$this_dir/Preferences.sublime-settings"
dest="$sublime_dir/Preferences.sublime-settings"
if [[ -h "$dest" ]]
then
  rm "$dest"
elif [[ -e "$dest" ]]
then
  mv "$dest" "$dest.bak"
fi
ln -s "$src" "$dest"

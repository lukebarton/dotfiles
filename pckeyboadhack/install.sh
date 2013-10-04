#!/bin/sh

# symlink settings in
pref_file=~/Library/Preferences/org.pqrs.PCKeyboardHack.plist
if [[ -h "$pref_file" ]]
then
  rm -r "$pref_file"
else
  mv "$pref_file" "$pref_file.backup"
fi
ln -s "`pwd`/pckeyboardhack/settings.plist" $pref_file

brew cask install pc-keyboardhack

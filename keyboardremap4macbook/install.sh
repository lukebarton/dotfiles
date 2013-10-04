#!/bin/sh

# symlink settings in
pref_file=~/Library/Preferences/org.pqrs.KeyRemap4MacBook.plist
if [[ -h "$pref_file" ]]
then
  rm -r "$pref_file"
else
  mv "$pref_file" "$pref_file.backup"
fi
ln -s "`pwd`/keyboardremap4macbook/settings.plist" $pref_file

brew cask install keyremap4macbook

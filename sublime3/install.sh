#!/bin/sh

# symlink settings in
sublime_dir=~/Library/Application\ Support/Sublime\ Text\ 3/Packages
if [[ -h "$sublime_dir/User" ]]
then
	rm -r "$sublime_dir/User"
else
	mv "$sublime_dir/User" "$sublime_dir/User.backup"
fi
ln -s "`pwd`/sublime3/User" "$sublime_dir"

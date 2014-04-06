#!/bin/sh

brew cask install iterm2

# Don’t display the annoying prompt when quitting iTerm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

open $DOTFILES/iterm2/Luke.itermcolors

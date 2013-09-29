#!/bin/sh
if [ "$(uname -s)" == "Darwin" ]
then
  # Check for Homebrew
  if test ! $(which brew)
  then
    echo "  x You should probably install Homebrew first:"
    echo "    https://github.com/mxcl/homebrew/wiki/installation"
    exit
  fi
fi

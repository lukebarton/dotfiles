user () {
  printf "\r  [ \033[0;33m?\033[0m ] $1"
}

if ! [ -f git/gitconfig.symlink ]
then

  git_credential='cache'
  if [ "$(uname -s)" == "Darwin" ]
  then
    git_credential='osxkeychain'
  fi

  user ' - What is your github author name?'
  read -e git_authorname
  user ' - What is your github author email?'
  read -e git_authoremail

  sed -e "s/AUTHORNAME/$git_authorname/g" -e "s/AUTHOREMAIL/$git_authoremail/g" -e "s/GIT_CREDENTIAL_HELPER/$git_credential/g" git/gitconfig.symlink.example > git/gitconfig.symlink

fi

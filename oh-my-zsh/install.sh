# Clone the repo
if [[ ! -a ~/.oh-my-zsh ]]
then
	git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi

OHMYDIR=~/.oh-my-zsh
if [[ -h $OHMYDIR/custom ]]
then
	rm -r $OHMYDIR/custom
else
	mv $OHMYDIR/custom $OHMYDIR/custom.backup
fi
ln -s "`pwd`/oh-my-zsh/custom" "$OHMYDIR"

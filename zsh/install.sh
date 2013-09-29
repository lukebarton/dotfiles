SHELL="/usr/local/bin/zsh"

brew install zsh

# Add shell
if ! grep -q $SHELL /etc/shells
then
    echo "$SHELL" | sudo tee -a /etc/shells
fi

# Swap shell
chsh -s /usr/local/bin/zsh $USER


# Fix env bug
if ! [ -f /etc/zshrc ]
then
	sudo mv /etc/{zshenv,zshrc}
fi

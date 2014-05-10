#!/bin/bash

echo "Debian/Ubuntu Bootstrap Script by EdTheDev"
echo " This is an interactive script."

# echo "You need Vim and Screen to survive."
# sudo apt-get install vim git screen xclip openssh-server

read -n 1 -r -p "Clone the rest of this repository (recommended)? [y/N]"
if [[ $REPLY =~ ^[Yy]$ ]]
then
    # git clone git@github.com:edthedev/bootstrap.git
	git clone https://github.com/edthedev/bootstrap.git
fi

read -n 1 -r -p "Run the rest of the bootrap scripts now? [y/N]"
if [[ $REPLY =~ ^[Yy]$ ]]
then
	bootstrap/debian-desktop.sh
	bootstrap/debian-dropbox.sh
	bootstrap/everythingelse.sh
	bootstrap/fedora-bootstrap.sh
	bootstrap/firefox.sh
	bootstrap/git-config.sh
	bootstrap/ssh_stuff.sh
fi

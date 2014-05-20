#!/bin/bash

echo "Debian/Ubuntu Bootstrap Script by EdTheDev"
echo " This is an interactive script."

# echo "You need Vim and Screen to survive."
sudo apt-get install vim git screen
# sudo apt-get install xclip openssh-server

read -n 1 -r -p "Clone the rest of this repository (recommended)? [y/N]"
if [[ $REPLY =~ ^[Yy]$ ]]
then
    # git clone git@github.com:edthedev/bootstrap.git
	git clone https://github.com/edthedev/bootstrap.git
fi

echo "Ansible will be used to run the rest of the install scripts."
apt-get install ansible

read -n 1 -r -p "Install i3 window manager now? [y/N]"
if [[ $REPLY =~ ^[Yy]$ ]]
then
	sudo ansible-playbook debian-desktop.yml --check
fi

read -n 1 -r -p "Setup SSH now? [y/N]"
if [[ $REPLY =~ ^[Yy]$ ]]
then
	bootstrap/ssh_stuff.sh
fi

read -n 1 -r -p "Setup Firefox now? [y/N]"
if [[ $REPLY =~ ^[Yy]$ ]]
then
	bootstrap/firefox.sh
fi


read -n 1 -r -p "Run the rest of the bootrap scripts now? [y/N]"
if [[ $REPLY =~ ^[Yy]$ ]]
then
	bootstrap/debian-desktop.sh
	bootstrap/debian-dropbox.sh
	bootstrap/everythingelse.sh
	bootstrap/fedora-bootstrap.sh
	bootstrap/git-config.sh
fi

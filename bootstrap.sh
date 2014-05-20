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

read -n 1 -r -p "Install Ansible for Debian / Ubuntu? [y/N]"
if [[ $REPLY =~ ^[Yy]$ ]]
then
	bootstrap/debian-developer.sh
	bootstrap/debian-ansible.sh
fi

read -n 1 -r -p "Install Ansible for OSX Mavericks? [y/N]"
if [[ $REPLY =~ ^[Yy]$ ]]
then
	bootstrap/mac-developer.sh
	bootstrap/mac-ansible.sh
fi

read -n 1 -r -p "Install i3 window manager on Debian/Ubuntu now? [y/N]"
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

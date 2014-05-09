#!/bin/bash

echo "Ubuntu Bootstrap Script by EdTheDev"

echo "Installing basic survival packages."
sudo apt-get install vim git screen xclip openssh-server
sudo apt-get install dtach dvtm mcrypt keepassx xclip python ranger

sudo apt-get install firefox

echo "Installing i3 and related."
sudo apt-get install i3 conky 

# sudo yum install vim git dtach dvtm mcrypt keepassx xclip python firefox i3 openssh-server conky ranger cal pcmanfm

echo "You may use the Internet in a few moments. Set your browser."
read -p "Press Enter when ready."
sudo update-alternatives --config x-www-browser

echo "Generate your SSH keys"
ssh-keygen

xclip -sel clip < ~/.ssh/id_rsa.pub
echo "Copied your Public Key to the clipboard."

echo "About to pull your Git repos."
echo "Paste your new SSH key into your GitHub and BitBucket accounts."
firefox https://github.com/settings/ssh
firefox https://bitbucket.org/account/user/edthedev/ssh-keys/

hostname
read -p "Press Enter after installing your Key to GitHub. It is in your clipboard." -e input

echo "Cloning your dotfiles to this host."
git clone git@github.com:edthedev/dotfiles.git

echo "Cloning the Minion project."
git clone git@github.com:edthedev/Minion.git

echo "Set your timezone."
sudo dpkg-reconfigure tzdata


echo "Run this command to bind your dotfiles:"
echo "python ~/dotfiles/builddotfiles.py -l"

echo "Download and install Dropbox."
firefox https://www.dropbox.com/install

echo "About to install Dropbox."
read -p "Press enter after you have downloaded Dropbox." -e input

sudo dpkg --install ~/Downloads/dropbox*.deb

echo "You may edit a file in a few moments. Set your editor."
read -p "Press Enter when ready."
sudo update-alternatives --config editor

echo "Lets install some Firefox plugins"
firefox https://addons.mozilla.org/en-US/firefox/addon/omnibar/
firefox https://addons.mozilla.org/en-us/firefox/addon/vimperator/
firefox https://addons.mozilla.org/en-US/firefox/addon/web-developer/?redirectlocale=en-US&redirectslug=Web_Developer_Extension_%28external%29
firefox https://addons.mozilla.org/en-US/firefox/addon/wot-safe-browsing-tool/
firefox https://addons.mozilla.org/en-us/firefox/addon/sitelauncher/
firefox https://addons.mozilla.org/en-US/firefox/addon/adblock-plus/

echo "Change the SSH Port, if you wish."
sudo vim /etc/ssh/sshd_config

echo "Installing more stuff..."
sudo apt-get install gnome-tweak-tool



echo "Installing Screensaver"
sudo apt-get install xscreensaver

sudo apt-get install xscreensaver-data-extra xscreensaver-gl-extra -y

echo "Disabling Gnome Screensaver"
sudo killall gnome-screensaver
gconftool-2 --type boolean -s /apps/gnome_settings_daemon/screensaver/start_screensaver false

echo "Add screensaver daemon to startup."
touch ~/.xinitrc
echo "xscreensaver -no-splash" >> ~/.xinitrc

echo "Enable lock, if desired."
xscreensaver-demo

echo "Remember to ssh-copy-id to install your SSH keys to other servers."

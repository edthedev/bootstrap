# TODO: Split this into logical subroutines.
sudo apt-get install dtach dvtm mcrypt keepassx xclip python ranger

echo "You might want to pick a new default editor now that Vim is installed.."
sudo update-alternatives --config editor

echo "You may use the Internet in a few moments. Set your browser."
read -p "Press Enter when ready."
sudo update-alternatives --config x-www-browser

# sudo yum install vim git dtach dvtm mcrypt keepassx xclip python firefox i3 openssh-server conky ranger cal pcmanfm

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

echo "You may edit a file in a few moments. Set your editor."
read -p "Press Enter when ready."
sudo update-alternatives --config editor

echo "Change the SSH Port, if you wish."
sudo vim /etc/ssh/sshd_config

echo "Installing more stuff..."
sudo apt-get install gnome-tweak-tool

echo "Remember to ssh-copy-id to install your SSH keys to other servers."

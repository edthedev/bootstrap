echo "Download and install Dropbox."
firefox https://www.dropbox.com/install

echo "About to install Dropbox."
read -p "Press enter after you have downloaded Dropbox." -e input

sudo dpkg --install ~/Downloads/dropbox*.deb

echo "Installing i3 and related."
sudo apt-get install i3 conky 

# sudo apt-get install firefox

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


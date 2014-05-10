cd ~
echo "Installing Vundle"
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "Installing your Vimrc"
# git clone https://github.com/edthedev/vimrc.git
ln -s ~/vimrc/vimrc ~/.vimrc
vim +:PluginInstall

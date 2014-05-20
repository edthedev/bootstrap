cd ~
git clone https://github.com/ansible/ansible.git
cd ansible
git checkout v1.6.1
# make install --prefix=~/python
# sudo mkdir /etc/ansible
# sudo cp ~/ansible/examples/hosts /etc/ansible/
cp ~/ansible/examples/hosts ~/python/

# Fixes for Mavericks
sudo easy_install --upgrade pip
sudo ARCHFLAGS=-Wno-error=unused-command-line-argument-hard-error-in-future pip install pycrypto

# For everyone
sudo pip install PyYAML jinja2 paramiko pycrypto

echo "PYTHONPATH=$PYTHONPATH:~/ansible/bin" >> ~/.bashrc
echo "PATH=$PATH:~/ansible/bin" >> ~/.bashrc



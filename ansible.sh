cd ~

# Fixes for Mavericks
sudo easy_install --upgrade pip
sudo ARCHFLAGS=-Wno-error=unused-command-line-argument-hard-error-in-future pip install pycrypto

# For everyone
sudo pip install PyYAML jinja2 paramiko pycrypto

# Install Ansible system wide.
git clone https://github.com/ansible/ansible.git
cd ansible
git checkout v1.6.1
# make install --prefix=~/python
make install 
# cp ~/ansible/examples/hosts ~/python/

# Setup example configuration
sudo mkdir /etc/ansible
sudo cp ~/ansible/examples/hosts /etc/ansible/

echo "Check /etc/ansible/hosts"

apt-get update
apt-get install python-pip python-dev git -y
pip install PyYAML jinja2 paramiko
cd ~
git clone https://github.com/ansible/ansible.git
cd ansible
make install
mkdir /etc/ansible
cp ~/ansible/examples/hosts /etc/ansible/
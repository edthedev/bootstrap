function ssh-copy-id {
	cat ~/.ssh/id_rsa.pub | ssh $1 "mkdir -p ~/.ssh; cat >> ~/.ssh/authorized_keys"
	cat ~/.ssh/id_rsa.pub | ssh $1 "cat >> ~/id_rsa.pub"
}

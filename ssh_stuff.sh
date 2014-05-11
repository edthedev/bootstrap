read -n 1 -r -p "Generate a new SSH key? [y/N]"
if [[ $REPLY =~ ^[Yy]$ ]]
then
    ssh-keygen
#else
#    exit
#    echo "Abort.."
fi

xclip -sel clip < ~/.ssh/id_rsa.pub
echo "Copied your Public Key to the clipboard."

echo "Your hostname is:"
hostname

echo "Paste your new SSH key into your GitHub and BitBucket accounts."
firefox https://github.com/settings/ssh
firefox https://bitbucket.org/account/user/edthedev/ssh-keys/


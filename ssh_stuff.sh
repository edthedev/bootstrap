# web=firefox # for Ubuntu/Fedora
# web=iceweasel # for Debian
web="open -a Firefox.app" # for Apple OSX Mavericks

read -n 1 -r -p "Generate a new SSH key? [y/N]"
if [[ $REPLY =~ ^[Yy]$ ]]
then
    ssh-keygen
#else
#    exit
#    echo "Abort.."
fi

xclip -sel clip < ~/.ssh/id_rsa.pub
echo "Copied your Public Key to the clipboard (Debian/Ubuntu/Fedora)."

echo "Your hostname is:"
hostname

echo "Paste your new SSH key into your GitHub and BitBucket accounts."
$web https://github.com/settings/ssh
$web https://bitbucket.org/account/user/edthedev/ssh-keys/

echo "Opening pubkey in editor (OSX Mavericks)"
open -a TextEdit ~/.ssh/id_rsa.pub

echo "Enabling remote desktop on Mac"
sudo serveradmin settings info:enableSSH = yes

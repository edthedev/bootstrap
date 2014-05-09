
xclip -sel clip < ~/.ssh/id_rsa.pub
echo "Copied your Public Key to the clipboard."

echo "About to pull your Git repos."
echo "Paste your new SSH key into your GitHub and BitBucket accounts."
firefox https://github.com/settings/ssh
firefox https://bitbucket.org/account/user/edthedev/ssh-keys/

hostname

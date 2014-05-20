open -a Firefox.app https://developer.apple.com/downloads/index.action
echo "Install 'Command Line Tools (OSX Mavericks)' - You will need an Apple ID."
echo "Installing Homebrew..."
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
brew install python

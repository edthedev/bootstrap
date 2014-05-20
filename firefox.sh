echo "Lets install some Firefox plugins"
# web=iceweasel # for Debian
# web=firefox # for Ubuntu/Fedora
web="open -a Firefox.app" # for Apple OSX Mavericks

$web https://addons.mozilla.org/en-US/firefox/addon/omnibar/
$web https://addons.mozilla.org/en-US/firefox/addon/web-developer/?redirectlocale=en-US&redirectslug=Web_Developer_Extension_%28external%29
$web https://addons.mozilla.org/en-US/firefox/addon/wot-safe-browsing-tool/
$web https://addons.mozilla.org/en-us/firefox/addon/sitelauncher/
$web https://addons.mozilla.org/en-US/firefox/addon/adblock-plus/
$web https://addons.mozilla.org/en-US/firefox/addon/its-all-text/

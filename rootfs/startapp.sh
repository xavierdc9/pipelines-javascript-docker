#!/usr/bin/with-contenv sh

set -e # Exit immediately if a command exits with a non-zero status.
set -u # Treat unset variables as an error.

export HOME=/config
mkdir -p /config/profile
firefox --version
exec /usr/bin/firefox_wrapper --profile /config/profile --setDefaultBrowser >> /config/log/firefox/output.log 2>> /config/log/firefox/error.log
#exec /usr/bin/xterm
#flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
#sleep 5
#flatpak install flathub com.github.micahflee.torbrowser-launcher -y
#sleep 5
#flatpak run com.github.micahflee.torbrowser-launcher
#exec torbrowser-launcher

#tar -xf tor-browser-linux64-10.5.5_en-US.tar.xz .
#tar -zxvf /tor-browser-linux64-10.5.5_en-US.tar.xz
#cd /tor-browser_en-US
#chmod +x start-tor-browser.desktop
#./start-tor-browser.desktop
#exec /tor-browser_en-US/Browser/start-tor-browser

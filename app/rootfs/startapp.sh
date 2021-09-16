#!/usr/bin/with-contenv sh

set -e # Exit immediately if a command exits with a non-zero status.
set -u # Treat unset variables as an error.

export HOME=/config
mkdir -p /config/profile
firefox --version
#exec /usr/bin/firefox_wrapper --profile /config/profile --setDefaultBrowser >> /config/log/firefox/output.log 2>> /config/log/firefox/error.log
exec /usr/bin/firefox_wrapper --profile /config/profile --setDefaultBrowser >> output.log 2>> error.log

exec npm start server.js

#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   App Store\n\n"

execute "defaults write com.apple.appstore ShowDebugMenu -bool true" \
    "Enable debug menu"

execute "defaults write com.apple.commerce AutoUpdate -bool false" \
    "Turn off auto-update"

execute "defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool false" \
    "Disable automatic update check"

execute "defaults write com.apple.SoftwareUpdate AutomaticDownload -bool false" \
    "Do not auto-download newly available updates in background"

execute "defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -bool false" \
    "Do not auto-install System data files and security updates"

killall "App Store" &> /dev/null

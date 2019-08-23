# !/bin/sh

set_macos_defaults() {

    printf "${BOOTSTRAPPER}BOOTSTRAPPER${OFF} - ${BOLD}Setting MacOS defaults ${OFF} \n"

    # Set macos dock height
    defaults write com.apple.dock tilesize -int 25

    # Set macos dock to autohide
    defaults write com.apple.dock autohide -bool true

    # Remove macos dock autohide-delay
    defaults write com.apple.dock autohide-delay -float 0

    # Remove macos dock autohide-time-modifier
    defaults write com.apple.dock autohide-time-modifier -float 1

    # Set macos dock magnification on
    defaults write com.apple.dock magnification -bool true

    # Set macos dock magnification size
    defaults write com.apple.Dock largesize -float 120

    # Do not show recent applications on dock
    defaults write com.apple.dock show-recents -bool false

    # Remove all apps showing on as recent
    defaults write com.apple.dock recent-apps -array

    # Remove all application icons on macos dock
    defaults write com.apple.dock persistent-apps -array

    # Disable macos dashboard
    defaults write com.apple.dashboard mcx-disabled -boolean true

    # Enable mission control to goup windows by app
    defaults write com.apple.dock "expose-group-apps" -bool true

    # Minimize applications to respective icon on macos dock
    defaults write com.apple.dock minimize-to-application -boolean true

    # Reduce mission control animation time
    # This does not affect Mission Control animation when toggling it through touchpad
    defaults write com.apple.dock expose-animation-duration -float 0.1

    # Show external hard drives on desktop
    defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true

    # Change default screenshot folder
    cd ~ 
    mkdir -p Screenshots
    defaults write com.apple.screencapture location -string "${HOME}/Screenshots"

    # Change screenshot output format
    # Accepted values: jpg, png, bmp, tiff,  pdf
    defaults write com.apple.screencapture type -string png

    # Enable screencapture shadowing
    defaults write com.apple.screencapture disable-shadow -bool false
    
    # Disable press and hold character picker in order to key repeat
    defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

    # Set key repeat delay
    defaults write NSGlobalDomain InitialKeyRepeat -int 30

    # Verify
    sudo defaults write /Library/Preferences/com.apple.iokit.AmbientLightSensor "Automatic Keyboard Enabled" -bool true

    # Verify
    defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

    # Set mouse speed
    defaults write -g com.apple.mouse.scaling -float 3

    # Set trackpad speed
    defaults write -g com.apple.trackpad.scaling -float 3

    # Set mouse right click
    # Accepted values: TwoButton, OneButton
    defaults write com.apple.AppleMultitouchMouse MouseButtonMode -string TwoButton

    # Enable display brightness auto ajustment"
    sudo defaults write /Library/Preferences/com.apple.iokit.AmbientLightSensor "Automatic Display Enabled" -bool false

    # Enable HiDPI display mode (restart required, default = false)
    sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true

    # Enable subpixel font rendering on non-Apple LCDs
    defaults write NSGlobalDomain AppleFontSmoothing -int 2

    # Show all files by default on macos finder
    defaults write com.apple.finder AppleShowAllFiles -bool true

    # Show file extensions by default
    defaults write NSGlobalDomain AppleShowAllExtensions -bool true

    # Show status bar on finder
    defaults write com.apple.finder ShowStatusBar -bool true

    # Always show posix file path as finder's title
    defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

    # Disable extension change warning
    defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

    # Set finder to show unvisited folder's in column mode as default
    # Accepted values: Flwv, Nlsv, clmv, icnv 
    defaults write com.apple.Finder FXPreferredViewStyle clmv

    # Disable .DS_Store file creation on network drives
    defaults write com.apple.desktopservices DSDontWriteNetworkStores true

    # Show battery percentage on macos menu bar
    defaults write com.apple.menuextra.battery ShowPercent -bool true

    # Set macos menu bar to autohide
    defaults write "Apple Global Domain" "_HIHideMenuBar..." 1

    # Add bluetooth control to macos menu bar
    defaults write com.apple.systemuiserver menuExtras -array-add "/System/Library/CoreServices/Menu Extras/Bluetooth.menu..."

    # Add clock control to macos menu bar 
    defaults write com.apple.systemuiserver menuExtras -array-add "/System/Library/CoreServices/Menu Extras/Clock.menu" 

    # Add display control to macos menu bar
    defaults write com.apple.systemuiserver menuExtras -array-add "/System/Library/CoreServices/Menu Extras/Displays.menu"

    # Add volume control to macos menu bar
    defaults write com.apple.systemuiserver menuExtras -array-add "/System/Library/CoreServices/Menu Extras/Volume.menu"

    # Add airport control to macos menu bar
    defaults write com.apple.systemuierver menuExtras -array-add "/System/Library/CoreServices/Menu Extras/AirPort.menu"

    # Reset all ui components affected
    killall SystemUIServer && killall Dock

}
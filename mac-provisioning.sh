# Install "Xcode"
xcode-select --install
# Confirm Xcode Installing
# "xcode-select: note: install requested for command line developer tools"

# Install "Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# Password -> Mac's Login Password

# Install "ansible"
brew install git
brew install python
brew install ansible

# Mac Provisioning
mkdir ~/.provisioning
cd .provisioning
brew install git
git clone https://github.com/udgwyy/mac-provisioning.git

# Mac Settings
ansible-playbook -i mac_default_settings.yml
# Display LibraryDir
sudo chflags nohidden ~/Library
# ScreenSever
sudo osascript -e 'tell application "System Events" to set require password to wake of security preferences to false'
# Kill App
killall Dock
killall Finder

# Mac Apps
ansible-playbook mac_app_install.yml
# AppStore Login
mas install 539883307 #LINE

# zsh

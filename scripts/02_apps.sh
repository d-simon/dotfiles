###############################################################################
# Homebrew                                                                    #
###############################################################################

# Update homebrew recipes
brew update

sudo chown -R $USER /usr/local/include
sudo chown -R $USER /Library/Caches/Homebrew/

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep

binaries=(
  ack
  ffmpeg
  git
  graphicsmagick
  hub
  nmap
  nvm
  python
  rename
  sshfs
  trash
  tree
  webkit2png
  youtube-dl
  mackup
)

echo "installing binaries..."
brew install ${binaries[@]}


###############################################################################
# Homebrew Cask                                                               #
###############################################################################

# Homebrew Cask
brew install caskroom/cask/brew-cask

brew tap caskroom/versions

# Apps
apps=(

  # Utilities
  flux
  istat-menus
  # iterm2-beta
  appcleaner
  spectacle

  # Prefpanes / Quicklook plugins
  qlcolorcode
  qlstephen
  qlmarkdown
  qlprettypatch
  quicklook-json
  quicklook-csv
  qlimagesize
  webpquicklook
  colorpicker-skalacolor

  # Browsers
  google-chrome
  google-chrome-canary
  firefox
  firefoxdeveloperedition
  flash

  # Design
  sketch

  # Code
  sublime-text3
  sourcestree
  vagrant
  virtualbox

  # Comm
  skype
  slack

  # Storage
  arq
  dropbox
  transmit

  # Misc
  spotify
  toggldesktop
  transmission
  vlc
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}


brew tap caskroom/fonts

# Fonts
fonts=(
  font-abril-fatface
  font-exo2
  font-fira-mono
  font-fira-sans
  font-gentium-book-basic
  font-inconsolata
  font-josefin-sans
  font-josefin-slab
  font-lato
  font-merriweather
  font-merriweather-sans
  font-open-sans
  font-open-sans-condensed
  font-playfair-display
  font-playfair-display-sc
  font-pt-mono font-pt-sans
  font-pt-serif
  font-signika
  font-source-code-pro
  font-source-sans-pro
  font-source-serif-pro
  font-titillium-web
  font-vollkorn
  font-m-plus
  font-clear-sans
  font-roboto
)

# install fonts
echo "installing fonts..."
brew cask install ${fonts[@]}

echo "force cleanup homebrew..."
# cleanup homebrew's cache
brew cleanup --force -s

###############################################################################
# ENV                                                                         #
###############################################################################

# PATH
export PATH="/usr/local/bin:$PATH"

# make sure system is up-to-date
softwareupdate --install --all


# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# node environment
brew install nvm
export NVM_DIR="${HOME}/.nvm"
source "$(brew --prefix nvm)/nvm.sh"
nvm install node
nvm alias default node
# install some packages
npm install --global eslint bower gulp serve

# Install composer
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
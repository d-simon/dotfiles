# Set the colours you can use
black='\033[0;30m'
white='\033[0;37m'
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
magenta='\033[0;35m'
cyan='\033[0;36m'

# Resets the style
reset=`tput sgr0`

cecho() {
  echo "${2}${1}${reset}"
  return
}

# Set continue to false by default
CONTINUE=false

echo ""
cecho "###############################################" $green
cecho "#                   DOTFILES                  #" $green
cecho "#                                             #" $green
cecho "#      Run configuration and setup of         #" $green
cecho "#      a new osx machine: homebrew, cask,     #" $green
cecho "#      zsh, libs, nvm, apps, etc.             #" $green
cecho "#                                             #" $green
cecho "#      David Simon – me@davidsimon.ch         #" $green
cecho "#      https://github.com/d-simon/dotfiles    #" $green
cecho "#                                             #" $green
cecho "###############################################" $green
echo ""
cecho "CAUTION: Be sure that you know what you're doing," $red
cecho "this will overwrite some configurations and settings!" $red
cecho "Install all the configured apps, libraries and settings? (${reset}${green}y${reset}/${red}n${reset})"

read -r response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
  CONTINUE=true
fi


if $CONTINUE; then
  # clear bash cache
  cecho 'Clear bash cache' $green
  hash -r

  # concatenate all shell scripts together, so things like variables can be reused
  cecho 'Concatenate all scripts' $green
  rm scripts_cat.sh
  cat scripts/*.sh > scripts_cat.sh

  cecho 'Run...' $green
  # bash scripts_cat.sh
  rm scripts_cat.sh

  cecho 'Run osx-for-hackers.sh' $green
  sh osx-for-hackers.sh
fi
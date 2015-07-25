
# Path to your oh-my-zsh installation.
export ZSH=/Users/z/.oh-my-zsh

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=1

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# oh-my-zsh
ZSH=${HOME}/.oh-my-zsh # config dir
DISABLE_UPDATE_PROMPT=true # auto-update without prompting
ZSH_THEME="miloshadzic" # set name of the theme to load (in ~/.oh-my-zsh/themes/)

# plugins to load
plugins=(
	brew
	brew-cask
	git
	git-extras
	history-substring-search
	zsh-syntax-highlighting
	bower
	bundler
	cake
	composer
	common-aliases
	dircycle
	dirhistory
	dirpersist
	docker
	encode64
	last-working-dir
	web-search
)
source ${ZSH}/oh-my-zsh.sh # load it


# other settings
unsetopt correct_all # disable autocorrect

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/usr/local/bin:/usr/local/sbin:$PATH:/usr/local/opt/ruby/bin:/usr/local/share/npm/bin"
export GEM_HOME="$(brew --prefix)"
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export LANG=de_CH.UTF-8
export LC_ALL=de_CH.UTF-8
setopt interactivecomments

# NVM
export NVM_DIR="${HOME}/.nvm"
source "$(brew --prefix nvm)/nvm.sh"

# update homebrew
alias brewu='brew update && brew upgrade && brew doctor && brew cleanup --force -s && rm -rf "$(brew --cache)"'

# update everything
alias updateall='softwareupdate -ia && brew update && brew upgrade && gem update && npm --silent --global update && pip freeze --local | grep -v "^\-e" | cut -d = -f 1  | xargs pip install -U'

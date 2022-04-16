#!/usr/bin/env bash

set -e

sudo -v

sudo softwareupdate -ia --verbose

xcode-select --install

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew tap homebrew/core
brew tap homebrew/services
brew tap homebrew/cask-fonts

brew install autojump
brew install fzf
brew install git
brew install gh
brew install gnupg
brew install go
brew install httpie
brew install jq
brew install kubectl
brew install kubectx --with-short-names
brew install neovim
brew install jandedobbeleer/oh-my-posh/oh-my-posh
brew install postgresql
brew install rbenv
brew install redis
brew install ripgrep
brew install zsh zsh-completions

brew install --cask alfred
brew install --cask docker
brew install --cask discord
brew install --cask google-chrome
brew install --cask gpg-suite-no-mail
brew install --cask firefox
brew install --cask flycut
brew install --cask font-fira-code
brew install --cask insomnia
brew install --cask iterm2
brew install --cask visula-studio-code

# Update and upgrade all the formulae and cleanup
brew update && brew upgrade && brew cask upgrade --greedy && brew cleanup -s

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

rbenv init

# To install useful key bindings and fuzzy completion:
"$(brew --prefix)/opt/fzf/install"

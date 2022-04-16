#!/usr/bin/env bash

set -e

sudo -v

sudo apt-get install build-essential procps curl file git

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
sed -i '5 i # Setup linuxbrew' ~/.zshrc
sed -i '6 i eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"\n' ~/.zshrc

brew tap homebrew/core
brew tap homebrew/services
brew tap homebrew/cask-fonts

brew install autojump
brew install docker
brew install flyctl
brew install fzf
brew install git
brew install gh
brew install gnupg
brew install go
brew install httpie
brew install jq
brew install kubectl
brew install kubectx
brew install node@16
brew install neovim
brew install jandedobbeleer/oh-my-posh/oh-my-posh
brew install postgresql
brew install rbenv
brew install redis
brew install ripgrep
brew install zsh zsh-completions

## Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

## Change shell to zsh
sudo chsh -s $(which zsh)

# Update and upgrade all the formulae and cleanup
brew update && brew upgrade && brew cleanup -s

## Install Jetbrain Mono Font
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

rbenv init

# To install useful key bindings and fuzzy completion:
"$(brew --prefix)/opt/fzf/install"

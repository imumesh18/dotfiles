export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Setup prompt
eval "$(oh-my-posh --init --shell zsh --config ~/.config/ohmyposh/code.omp.json)"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

plugins=(
  git
  docker
  zsh-syntax-highlighting
  kubectl
)

source $ZSH/oh-my-zsh.sh

# fzf setup
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# autojump setup
[ -f /usr/local/etc/profile.d/autojump.sh ] && source /usr/local/etc/profile.d/autojump.sh

# user rg with fzf if installed
if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git/*"'
fi

# Setup rebnv
# eval "$(rbenv init -)"

# alias
alias update="brew update && brew upgrade && brew cask upgrade --greedy && brew cleanup -s"
alias vim="nvim"

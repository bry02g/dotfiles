
export ZSH="$Home/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh
alias vim="nvim"
alias tumble="python2 $HOME/Documents/research/TumbleTiles/tumblegui.py"

export PATH=$PATH:~/Documents/flutter/bin
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.sass/dart-sass:$PATH"
export PATH="$HOME/.elm:$PATH"

eval "$(rbenv init -)"

motivate


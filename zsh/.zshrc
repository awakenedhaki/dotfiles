[ -f ~/.exports ] && source ~/.exports
[ -f ~/.aliases ] && source ~/.aliases
[ -f ~/.functions ] && source ~/.functions
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

plugins=(
  git
  zsh-autosuggestions
  zsh-completions
  zsh-syntax-highlighting
  history-substring-search
)

source ~/powerlevel9k.zsh


# Path to your oh-my-zsh installation.
ZSH_THEME="powerlevel9k/powerlevel9k"

export ZSH="/Users/rodrigovallejos/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

bindkey -v

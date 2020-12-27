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

[ -f ~/.exports ] && source ~/.exports
[ -f ~/.environ ] && source ~/.environ
[ -f ~/.aliases ] && source ~/.aliases
[ -f ~/.functions.zsh ] && source ~/.functions.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export ZSH="$HOME/.oh-my-zsh"

plugins=(
  zsh-git-enhanced
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $HOME/.profile
source $ZSH/oh-my-zsh.sh

ZSH_THEME="powerlevel10k/powerlevel10k"
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
ZSH_DISABLE_COMPFIX="true"
# Based on Favware's Codespace
# Licensed under MIT

eval "$(starship init zsh)"

export TERM="xterm-256color"
export ZSH="$HOME/.oh-my-zsh"

# Deno
export DENO_INSTALL="/home/vscode/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

ZSH_THEME="powerlevel10k/powerlevel10k"
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
ZSH_DISABLE_COMPFIX="true"

plugins=(
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $HOME/.profile
source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
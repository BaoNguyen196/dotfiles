# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi



# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Dotfiles folder
export DOTFILES=~/dotfiles

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
    zsh-autosuggestions
    zsh-syntax-highlighting
    fzf
)

# ENVs 
export EDITOR="nvim"
export TERM="xterm-256color"
export PATH=$HOME/bin:$PATH
export WORKSPACE=~/Projects
export PETSPACE=~/Pets
export TSSPACE=~/Documents/companies/Trusting-Social/projects
export BAO=~/Documents/Bao

source $ZSH/oh-my-zsh.sh

# Alias & Functions
source $DOTFILES/zsh/aliases.zsh
source $DOTFILES/zsh/functions.zsh

# Setup NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/Users/bao.nguyen2/.bun/_bun" ] && source "/Users/bao.nguyen2/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# fnm
FNM_PATH="/Users/bao.nguyen2/Library/Application Support/fnm"
eval "`fnm env`"

alias pspace="cd $PETSPACE"
alias wspace="cd $WORKSPACE"
alias dotfiles="cd $DOTFILES"
alias tsprojects="cd $TSSPACE"
alias bao="cd $BAO"

alias nvimrc="nvim ~/.config/nvim/init.vim"
alias zshrc="nvim ~/.zshrc"
alias tmuxrc="nvim ~/.tmux.conf"

# Tmux/Tmuxinator
alias tmux_kill="tmux kill-server"
alias tmuxi="tmuxinator"

# File system tree
alias .='pwd'
alias ..='cd ..'
alias ...='cd ../..'
alias ~='cd ~'

# System
alias szsh="source ~/.zshrc; echo 'Reload zshrc completed!';"
alias sdown="sudo shutdown -h now"

# Development tools
## Yarn/Node.js
alias ys="yarn start"
alias yd="yarn dev"
alias yt="yarn test"

## Git
alias gp="git pull"
alias gfp="git fetch -p"
alias gcm="git checkout main"

## Utils
alias cl="clear"

# Project navigation
## TS Projects
alias tspl="cd $TSSPACE/portal_loyalty"
alias dop="cd $TSSPACE/dj_web"

# Applications
## Browsers with no proxy
alias chrome="open -na Google\ Chrome --args --no-proxy-server"
alias brave="open -n -a Brave\ Browser --args --no-proxy-server"
alias arc="open -n -a Arc --args --no-proxy-server"
# alias chrome="open -na 'Google Chrome' --args --proxy-server='direct://' --proxy-bypass-list='*'"

# Languages
## Python
alias py="python3"
alias py3="python3"
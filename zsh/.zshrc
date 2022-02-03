export ZSH="/Users/ohmrrr/.oh-my-zsh"

# Theme
# https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="cloud"

# ZSH Plugins
plugins=(
    git 
    macos
    zsh-autosuggestions
    zsh-syntax-highlighting
    copydir
)

source $ZSH/oh-my-zsh.sh

# Exports
export DOT_FILES="$HOME/.dotfiles"

# Aliases
alias home="cd $HOME"
alias projects="cd $HOME/Code"
alias reload="source ~/.zshrc"
alias open="ofd"

alias ..="cd .."
alias ....="cd ../.."
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
export NVM_DIR="$HOME/.nvm"

# Aliases
alias home="cd $HOME"
alias p="cd $HOME/Code"
alias dl="cd $HOME/Downloads"
alias dt="cd $HOME/Desktop"

alias reload="source ~/.zshrc"
alias open="ofd"

alias ..="cd .."
alias ...="cd ../.."
alias ...."cd ../../.."

# Load NVM
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"
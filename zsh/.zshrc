export ZSH="$HOME/.oh-my-zsh"
export DOT_FILES="$HOME/.dotfiles"

# History
HISTFILE="$DOT_FILES/zsh/.zsh_history"

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
source $DOT_FILES/xcode/aliases.zsh

# Exports
export NVM_DIR="$HOME/.nvm"
export EDITOR="code"

# Aliases
alias home="cd $HOME"
alias p="cd $HOME/Code"
alias dl="cd $HOME/Downloads"
alias dt="cd $HOME/Desktop"

alias reload="source ~/.zshrc"
alias finder="ofd"

alias ..="cd .."
alias ...="cd ../.."
alias ...."cd ../../.."

# Load NVM
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"
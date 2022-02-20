export DOT_FILES="$HOME/.dotfiles"
export ZSH="$DOT_FILES/.oh-my-zsh"

# History
HISTFILE="$DOT_FILES/zsh/etc/.zsh_history"

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

# Will change to use a loop for all files that end in .zsh
source $ZSH/oh-my-zsh.sh
source $DOT_FILES/xcode/aliases.zsh
source $DOT_FILES/yarn/path.zsh

# Exports
export NVM_DIR="$HOME/.nvm"
export EDITOR="code"

# Aliases
alias p="cd $HOME/Code"
alias dl="cd $HOME/Downloads"
alias dt="cd $HOME/Desktop"

alias reload="source ~/.zshrc"
alias path='echo $PATH | tr -s ":" "\n"'
alias finder="ofd"

alias ..="cd .."
alias ...="cd ../.."
alias ...."cd ../../.."

# Load NVM
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"
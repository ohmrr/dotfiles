export ZSH="$HOME/.oh-my-zsh"
export DOT_FILES="$HOME/.dotfiles"

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

# Load .zsh Files
source $ZSH/oh-my-zsh.sh

typeset -U zsh_files
zsh_files=($DOT_FILES/**/*.zsh)

for file in $zsh_files
do
    source $file
done

unset zsh_files

typeset -U PATH

# Exports
export NVM_DIR="$HOME/.nvm"
export EDITOR="code"

# Load NVM
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"
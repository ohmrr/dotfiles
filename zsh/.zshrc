export ZSH="$HOME/.oh-my-zsh"
export DOT_FILES="$HOME/.dotfiles"

# History
HISTFILE="$DOT_FILES/zsh/etc/.zsh_history"

# Window Title
DISABLE_AUTO_TITLE="true"

# Theme
# https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="cloud"

# ZSH Plugins
plugins=(
    git 
    macos
    zsh-autosuggestions
    web-search
    zsh-syntax-highlighting
    copypath
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

autoload -U add-zsh-hook

load-nvmrc() {
    local node_version="$(nvm version)"
    local nvmrc_path="$(nvm_find_nvmrc)"

    if [ -n "$nvmrc_path" ]; then
        local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

        if [ "$nvmrc_node_version" = "N/A" ]; then
            echo ".nvmrc file exists, but node version ${nvmrc_node_version} is not installed."
        elif [ "$nvmrc_node_version" != "$node_version" ]; then
            nvm use --silent
        fi
    elif [ "$node_version" != "$(nvm version default)" ]; then
        nvm use --silent default
    fi
}

add-zsh-hook chpwd load-nvmrc
load-nvmrc
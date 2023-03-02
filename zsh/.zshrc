setopt autocd ksharrays magicequalsubst nonomatch
setopt notify numericglobsort promptsubst interactivecomments
setopt hist_expire_dups_first hist_ignore_dups
setopt hist_ignore_space hist_verify

# History
HISTFILE="$ZDOTDIR/cache/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

DISABLE_AUTO_TITLE="true"

autoload -Uz compinit
compinit -d ~/.cache/zcompdump
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

PROMPT=$'%F{%(#.blue.green)}┌──${debian_chroot:+($debian_chroot)──}(%B%F{%(#.red.blue)}%n%(#.💀.@)%m%b%F{%(#.blue.green)})-[%B%F{reset}%(6~.%-1~/…/%4~.%5~)%b%F{%(#.blue.green)}]\n└─%B%(#.%F{red}#.%F{blue}$)%b%F{reset} '
RPROMPT=$'%(?.. %? %F{red}%B⨯%b%F{reset})%(1j. %j %F{yellow}%B⚙%b%F{reset}.)'

unsetopt ksharrays
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# Load .zsh Files
typeset -U zsh_files
zsh_files=($DOTDIR/**/*.zsh)

for file in $zsh_files; do
    source "$file"
done
unset zsh_files

typeset -U PATH

source $HOMEBREW_PREFIX/opt/chruby/share/chruby/chruby.sh
source $HOMEBREW_PREFIX/opt/chruby/share/chruby/auto.sh
chruby ruby-3.1.2

# Load NVM
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"

autoload -U add-zsh-hook

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

add-zsh-hook chpwd load-nvmrc
load-nvmrc

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
compinit -d $ZDOTDIR/cache/.zcompdump-$HOST
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

PROMPT=$'%F{%(#.blue.green)}┌──${debian_chroot:+($debian_chroot)──}(%B%F{%(#.red.blue)}%n%(#.💀.@)%m%b%F{%(#.blue.green)})-[%B%F{reset}%(6~.%-1~/…/%4~.%5~)%b%F{%(#.blue.green)}]\n└─%B%(#.%F{red}#.%F{blue}$)%b%F{reset} '
RPROMPT=$'%(?.. %? %F{red}%B⨯%b%F{reset})%(1j. %j %F{yellow}%B⚙%b%F{reset}.)'

unsetopt ksharrays
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zle_highlight=('paste:none')

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

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

count=$(ps a | awk '{print $2}' | grep -vi "tty*" | uniq | wc -l)
if [ $count -eq "1" ]; then
    neofetch
fi
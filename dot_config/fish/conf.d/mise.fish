fish_add_path --path "$HOME/.local/bin"

if status is-interactive; and type -q mise
    mise activate fish | source
end

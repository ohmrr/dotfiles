# Loads in .nvmrc files and switches to the correct node version
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

timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}
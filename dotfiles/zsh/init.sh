readonly ZSH_CONFIG_DIR="$(dirname "$(readlink -f "$0")")"

source "${ZSH_CONFIG_DIR}/variables.sh"
if [[ -o interactive ]]; then
    source "${ZSH_CONFIG_DIR}/functions.sh"
    get_antibody_if_needed
    source "${ZSH_CONFIG_DIR}/zsh-config.sh"
    source "${ZSH_CONFIG_DIR}/.zsh-plugins.sh"
    source "${ZSH_CONFIG_DIR}/fzf-config.sh"
    source "${ZSH_CONFIG_DIR}/aliases.sh"
    # source "${ZSH_CONFIG_DIR}/motd.sh"
    export_ssh_to_emacs
fi

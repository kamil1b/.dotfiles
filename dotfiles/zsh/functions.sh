function update-packages()
{
    rm -rf "${ZSH_CONFIG_DIR}/.zsh-plugins.sh"
    echo "antibody bundle < ${ZSH_CONFIG_DIR}/zsh-plugins.txt > ${ZSH_CONFIG_DIR}/.zsh-plugins.sh" | zsh -s
    source "${ZSH_CONFIG_DIR}/.zsh-plugins.sh"
}

function export_ssh_to_emacs()
{
    if [[ ! -n `cat ${DOOM_PATH}/env | grep ${SSH_AUTH_SOCK}` ]]; then
        echo SSH_AUTH_SOCK="$SSH_AUTH_SOCK" > ${DOOM_PATH}/env
    fi
}

function get_antibody_if_needed()
{
    if ! hash antibody 2>/dev/null; then
        local install_path="$(readlink -f ~/.local/bin)"
        mkdir -p "${install_path}"
        curl -sL git.io/antibody | BINDIR="${install_path}" sh -s
        update-packages
    fi
}

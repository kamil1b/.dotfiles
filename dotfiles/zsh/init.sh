readonly ZSH_CONFIG_DIR="$(dirname "$(readlink -f "$0")")"

source "${ZSH_CONFIG_DIR}/variables.sh"

if [[ ! -o interactive ]]; then
    exit 0
fi

readonly WORK_SCRIPT_DIR="$(readlink -f ~/.work)"

source "${ZSH_CONFIG_DIR}/functions.sh"
get_antibody_if_needed
export_ssh_to_emacs

_files_to_load=(
    "${ZSH_CONFIG_DIR}/aliases.sh"
    "${ZSH_CONFIG_DIR}/zsh-config.sh"
    "${ZSH_CONFIG_DIR}/.zsh-plugins.sh"
    "${ZSH_CONFIG_DIR}/fzf-config.sh"
)

if [[ -d "${WORK_SCRIPT_DIR}" ]]; then
    load_additional_config "${WORK_SCRIPT_DIR}"
fi

 for f in ${_files_to_load}; do source $f; done

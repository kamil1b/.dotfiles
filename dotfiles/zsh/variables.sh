## Common
PATH="${PATH}:$(readlink -f ~/.local/bin):$(readlink -f ~/go/bin):$(readlink -f /home/linuxbrew/.linuxbrew/bin)"
TERM=xterm-256color
## Paths
DOOM_PATH=$(readlink -f ~/.doom.d)
DOTREPO=$(readlink -f ~/dotfiles)
## Other
_Z_DATA="${ZSH_CONFIG_DIR}/.z"
MARKPATH="${ZSH_CONFIG_DIR}/.mark"

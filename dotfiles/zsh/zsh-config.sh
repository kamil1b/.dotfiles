# Completition
autoload -U compinit
compinit

# History
HISTFILE="${ZSH_CONFIG_DIR}/.hist_file"
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

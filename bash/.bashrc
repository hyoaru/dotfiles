# Exit if not an interactive shell
[[ $- != *i* ]] && return

# Path to Oh-My-Bash
export OSH="$HOME/.oh-my-bash"
OSH_THEME="font"
OMB_USE_SUDO=true

# Completions, aliases, and plugins
completions=(git composer ssh)
aliases=(general)
plugins=(git bashmarks)

# Load Oh-My-Bash
source "$OSH/oh-my-bash.sh"

# Fzf integration
eval "$(fzf --bash)"
export FZF_DEFAULT_OPTS="--height=100%"
export FZF_CTRL_T_COMMAND="fd --type f --hidden --no-ignore --exclude '.git'"
export FZF_CTRL_T_OPTS="--preview 'bat --style=numbers --color=always {}'"
export FZF_ALT_C_COMMAND="fd --hidden --type d"

# Bat integration
alias cat='bat --paging=never'
alias cat.real='/bin/cat'

# Eza integration
alias ls="eza --icons"
alias ll="eza -l --icons"
alias la="eza -la --icons"
alias lt="eza --tree --icons"

# Convenience scripts
alias rip="grep '\[ALPM\] installed' /var/log/pacman.log | tail -n 20"

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

# fzf integration
eval "$(fzf --bash)"

# bat integration
alias cat='bat --paging=never'
alias cat.real='/bin/cat'

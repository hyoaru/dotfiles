# Exit if not an interactive shell
[[ $- != *i* ]] && return

# Path to Oh-My-Bash
export OSH="$HOME/.oh-my-bash"
OSH_THEME="tonotdo"
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
alias cat='bat'
alias cat.real='/bin/cat'

# Eza integration
alias ls="eza --icons auto"
alias ll="eza -l --icons auto"
alias la="eza -la --icons auto"
alias lt="eza --tree --icons auto"

# Convenience scripts
alias rip="grep '\[ALPM\] installed' /var/log/pacman.log | tail -n 20"

# Path to Go binary
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$(go env GOPATH)/bin

# Path to node binary
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Github flavored markdown preview integration
alias mdp="gh-gfm-preview -l"

# Opencode
export PATH=~/.opencode/bin:$PATH

# AWS
export PATH=~/.local/bin:$PATH

# Zathura
zathura() {
  command zathura "$@" >/dev/null 2>&1 &
  disown
}

# Distrobox
distrobox() {
  command distrobox "$@" -- bash --noprofile --norc
}

# Return if requirements are not found.
if (( ! $+commands[eza] )); then
  return 1
fi

alias l='eza --icons'
alias ll='eza --icons -l'
alias la='eza --icons -la'

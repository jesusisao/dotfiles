# Return if requirements are not found.
if (( ! $+commands[exa] )); then
  return 1
fi

alias l='exa --icons'
alias ll='exa --icons -l'
alias la='exa --icons -la'

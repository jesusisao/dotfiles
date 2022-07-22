# Return if requirements are not found.
if (( ! $+commands[ruby] )); then
  return 1
fi
if (( ! $+commands[rbenv] )); then
  return 1
fi

# for Ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

if (( ! $+commands[brew] )); then
  return 1
fi

local OPENSSL_PATH=$(brew --prefix openssl)
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$OPENSSL_PATH"

if (( ! $+commands[bundle] )); then
  return 1
fi

alias bx='bundle exec'
alias rubo='bundle exec rubocop --require rubocop-rails --parallel -ES'
alias rubofix='bundle exec rubocop --require rubocop-rails -ES --autocorrect'

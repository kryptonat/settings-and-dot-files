source ~/.bash/*

BREW_PREFIX=`brew --prefix`
source $BREW_PREFIX/opt/chruby/share/chruby/chruby.sh
source $BREW_PREFIX/opt/chruby/share/chruby/auto.sh

[[ -s ~/.bashrc ]] && source ~/.bashrc
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

#. $HOME/.asdf/asdf.sh
#. $HOME/.asdf/completions/asdf.bash

source ~/.iterm2_shell_integration.bash
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PATH="/usr/local/opt/node@8/bin:$PATH"
export PATH="/usr/local/opt/postgresql@9.5/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"

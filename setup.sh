#/bin/bash

set -x
dotfiles=$(cd $(dirname $0) && pwd)

ln -s $dotfiles/bashrc                ~/.bashrc       || true
ln -s $dotfiles/bash_profile          ~/.bash_profile || true
ln -s $dotfiles/bash_aliases          ~/.bash_aliases || true


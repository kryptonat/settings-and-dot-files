source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash
source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh

#__git_ps11='\[\033[01;36m\]natalie@\h\[\033[00m\][\[\033[01;35m\]\w\[\033[00m\]]\n\$'
PS1='\[\033[01;36m\]natalie@\h\[\033[00m\][\[\033[01;35m\]\W$(__git_ps1 \[\033[32m\]" %s")\[\033[00m\]]\n\$'

export CLICOLOR=1

[[ -f .ruby-version ]] && chruby $(cat .ruby-version)

export ENABLE_AWESOME_PRINT=''
export FAKE_STE=1

# For Zeus.
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# RubyMine.
export RUBYLIB=/Applications/RubyMine.app/Contents/rb/testing/patch/bdd:/Applications/RubyMine.app/Contents/rb/testing/patch/common

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

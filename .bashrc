#PS1='\[\033[01;36m\]natalie@\h\[\033[00m\][\[\033[01;35m\]\w\[\033[00m\]]\n\$'
PS1='\[\033[01;36m\]natalie@\h\[\033[00m\][\[\033[01;35m\]\W$(__git_ps1 \[\033[32m\]" %s")\[\033[00m\]]\n\$'

export CLICOLOR=1

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

chruby $(cat .ruby-version)

#export ZP_DATABASE_URL=mysql2://zpmasterdb:5439599f00128b399011764163fd049a@zp-cloudpull-7d140aa0-cab9-4a2a-a86e-6e113de5012d.ccjtf0dxxk3d.us-west-2.rds.amazonaws.com:3306/zenpayroll_production
#export ZP_DATABASE_URL=mysql2://zpmasterdb:1e5ba7f5622f0a881b7bb67c5862dd96@zp-cloudpull-5b0989fe-e797-4960-8075-8f73ea24bf08.ccjtf0dxxk3d.us-west-2.rds.amazonaws.com:3306/zenpayroll_production
#export ZP_DATABASE_URL=mysql2://zpmasterdb:caeaab45be355cd7c055cde453634e0e@zp-cloudpull-bd3330c1-334d-4ba2-8d15-d7bffd56e3f2.ccjtf0dxxk3d.us-west-2.rds.amazonaws.com:3306/zenpayroll_production

export SSL_CERT_FILE=/Users/natalie.wong/workspace/certs/cacert.pem
export ENABLE_AWESOME_PRINT=''
export FAKE_STE=1


# For Zeus.
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# RubyMine.
export RUBYLIB=/Applications/RubyMine.app/Contents/rb/testing/patch/bdd:/Applications/RubyMine.app/Contents/rb/testing/patch/common

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

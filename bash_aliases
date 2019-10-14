alias l='ls -Ghla'

alias ws='cd ~/workspace'
alias zp='cd ~/workspace/zenpayroll && chruby $(cat .ruby-version)'
alias hi='cd ~/workspace/hawaiian-ice && chruby $(cat .ruby-version)'
alias dz='cd ~/workspace/danger_zone && chruby $(cat .ruby-version)'
alias ste='cd ~/workspace/ste && chruby $(cat .ruby-version)'
alias gcorp='cd ~/workspace/gcorp && chruby $(cat .ruby-version)'

# Goes to root of whatever git repo you're in
alias rt='cd $(git rev-parse --show-toplevel)'

# Runs the pre-commit linting hooks on demand
alias lint='rt;.git/hooks/pre-commit;cd -'

# Shortcuts for jumping around areas of zp or hi
alias models='rt;cd app/models'
alias controllers='rt;cd app/controllers'
alias services='rt;cd app/services'
alias jsc='rt;cd frontend/javascripts/components'

# Shortcuts for updating 
alias updatezpclient='pushd ~/workspace/zenpayroll; ZEN_PAYROLL_CLIENT=/Users/natalie.wong/workspace/zen_payroll_client bundle exec rake zen_payroll_client:update; popd'
alias updatehiclient='pushd ~/workspace/hawaiian-ice; bundle exec rake hawaiian_ice_client:update; popd'


# Git stuff
alias gds="git diff --staged"
alias gpuoh="git push -u origin HEAD"
alias gpp="git pull --prune"
alias gfp="git fetch --prune"
alias gsp="git stash pop"
alias wip="git add .; git commit -m 'wip' -n"
alias gf="git commit --fixup $1"
alias gco="git checkout $1"
alias grb="git rebase -i --autosquash development"
alias gpul="git push --force-with-lease"
#alias gclean="git fetch -p && for branch in `git branch -vv | grep ': gone]' | awk '{print $1}'`; do git branch -D $branch; done"
alias cleangit="git branch -vv | grep 'origin/.*: gone]' | awk '{print $1}' | xargs git branch -d"
alias gclean=git_clean

git_clean() {
  (
    git fetch -p &&
    for branch in `git branch -vv | grep ': gone]' | awk '{print $1}'`; do
      if [$branch != '*']
        then
        git branch -D $branch
      fi
    done
  )
}

# Rails stuff
alias zs="NO_PANDA=1 zeus start"
alias rc="NO_PANDA=1 rails console"
alias rs="NO_PANDA=1 rails server"
alias enter_the_matrix="bundle exec cap production rails:console"
alias enter_the_matrix_stag="bundle exec cap staging rails:console"
alias aptiblelogin="aptible login"
alias aptibleprod="aptible ssh bundle exec rails c --app hawaiian-ice-production"
alias aptiblestag="aptible ssh bundle exec rails c --app hawaiian-ice-staging"

# Webpack stuff
alias ys="yarn test-server --no-auto-watch"
alias yf="yarn test-file"
alias yc="rm -rf node_modules && yarn cache clean && yarn install"
alias jslogcat="sed -n '/SUMMARY:/,/Command failed with exit code/p'"

# VCR cassette
alias record_request_spec="RECORDING_VCR_CASSETTES=1 CAPYBARA_DRIVER=poltergeist_ignoring_js_errors bundle exec rspec "
alias prepare_request_spec="RECORDING_VCR_CASSETTES=1 CAPYBARA_DRIVER=chrome bundle exec rspec "
alias replay_request_spec="CAPYBARA_DRIVER=poltergeist_ignoring_js_errors bundle exec rspec "
alias record_vcr='script/record_vcr.sh'
function create_hi_fixture {
  RECORDING_VCR_CASSETTES=1 RAILS_ENV=test rake db:create_fixture[$1]
}
function create_zp_fixture {
  RECORDING_VCR_CASSETTES=1 RAILS_ENV=test rake db:create_fixture[$1]
}

# Cloud Pull stuff
export CLOUD_PULL_DATABASE_URL="mysql2://some/url/from/cloud/pull/zenpayroll_production"
alias CZP="DATABASE_URL=$CLOUD_PULL_DATABASE_URL"

# Run 'prep' after you've fetched development of hi or zp
# This will run all of the required commands in a row.
prepare_dev()
{
    ( set -x
    bundle install
    yarn install
    bundle exec rake db:migrate
    bundle exec rake db:test:prepare )
}
 
alias prep=prepare_dev

switch_hi_node_version()
{
  ( set -x
    nvm install 10.15.0
    nvm alias default 10.15.0
    nvm use default
  )
}

#alias hinode=switch_hi_node_version
alias hinode='nvm install 10.15.0 && nvm alias default 10.15.0 && nvm use default'
alias zpnode='nvm install node 10  && nvm use node 10'

# Ruby.
for cmd in rspec ruby rubocop rails; do
  alias $cmd="bundle exec $cmd"
done

export ZP_COMMITTER_FIX=true
export HI_COMMITTER_FIX=true
export DEFAULT_OWNING_MISSION='Benefits'
export DEFAULT_OWNING_TEAM='In-House'


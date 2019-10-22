# Common Aliases
alias ls='gls --color'
alias la='gls --color -lah'
alias cdb='cd ..'
alias cdbb='cd ../..'
alias cdbbb='cd ../../..'
alias cdbbbb='cd ../../../..'
alias cdb5='cd ../../../../..'
alias t='tail -f'
alias cdg='cd ~/git'
alias sj='cd static/js'
alias zshrc='vim ~/.zshrc' # Quick access to the ~/.zshrc file
alias sz='source ~/.zshrc'
alias s='source'
alias omz='cd ~/.oh-my-zsh'
alias grep='grep --color'
alias h='history'
alias hg='history | grep'
alias fin='find ./ -iname'
alias dot='cd ~/dotfiles'
alias ehost='sudo vim /etc/hosts'
alias yolo='sudo'
alias na='vim ~/dotfiles/aliases.zsh'
alias rmz='rm ~/.antigen/.zcompdump*;rm ~/.zcompdump*'
alias ch='cat /usr/local/Cellar/hs-static/3.9.9/src/tmp/pids/server.pid'

alias feona='ssh dit@feona.party'

# Vim
alias vimrc='vim ~/.vimrc'
alias vimpi='vim +PluginInstall +qall'
alias vimpc='vim +PluginClean'

# Bundler
alias be="bundle exec"
alias ber="bundle exec rake"
alias bl="bundle list"
alias bp="bundle package"
alias bo="bundle open"
alias bu="bundle update"
alias bi="bundle install"
alias bcn="bundle clean"

# Rake
alias berkr="bundle exec rake konacha:run"
alias berks="bundle exec rake konacha:serve"

# java
alias jaba="cd src/main/java"
alias java6='export JAVA_HOME=$(/usr/libexec/java_home -v 1.6)'
alias java7='export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)'
alias java8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)'
alias jv="java -version"

# Rake
alias rds='rake db:seed'
alias rdr='rake db:reset'
alias rdc='rake db:create'
alias rdm='rake db:migrate'

# Tmux
alias ta='tmux attach -t'
alias ts='tmux new-session -s'
alias tl='tmux list-sessions'
alias tksv='tmux kill-server'
alias tkss='tmux kill-session -t'

# Rvm
alias rvosa='rvm osx-ssl-certs status all'
alias rvoua='rvm osx-ssl-certs update all'
alias rvl='rvm list'
alias rvu='rvm use'
alias rgu='rvm gemset use'
alias rgc='rvm gemset create'
alias rgl='rvm gemset list'
alias rvi='rvm install'

# Gem
alias gi='gem install'
alias gibi='gem install bundler;bundle install'

# Selenium
alias wmu='webdriver-manager update'
alias wms='webdriver-manager start'
alias prt='protractor'

######################################################################## Git
# Branching
alias grv='git remote -v'
alias grao='git remote add origin'
alias grau='git remote add upstream'
alias grrou='git remote rename origin upstream'
alias grruo='git remote rename upstream origin'
alias grmv='git remote rename'
alias grrm='git remote remove'
alias gbd='git branch -D'
# Stashing
alias gsta='git stash'
alias gstaa='git stash apply'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsts='git stash show --text'
alias gsu='git submodule update'
# Resets
alias grs='git reset'
alias grsh1='git reset --hard HEAD~1'
alias grh='git reset HEAD'
alias gnuke='git reset HEAD --hard'
alias gbcm='git fetch origin;git reset --hard origin/master'
alias gcbcm='git checkout master;git fetch origin;git reset --hard origin/master'

# Rebasing
alias grb='git rebase'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbi='git rebase -i'
alias grbm='git rebase master'
alias grbs='git rebase --skip'
alias gms='git merge --squash'

# Pushing
alias gpno='git push origin --no-verify'
alias gpo='git push origin'
alias gpom='git push origin master'
alias gpof='git push origin --force'
alias atk='git push origin --no-verify --force'
alias gpofm='git push origin --force master'

# Cloning
alias gcl='git clone'

# Checking Out
alias gco='git checkout'
alias gcod='git checkout development'
alias gcor='git checkout release'
alias gcom='git checkout master'
alias gcoi='git checkout integration'
alias gcoom='git checkout origin/master'

# Committing
alias gaa='git add *'
alias gau='git add -u'
alias gmg='git commit -m'
alias gca='git commit --amend'
alias gcnm='git commit --no-verify -m'

# Pulling
alias glo='git pull origin'
alias glom='git pull origin master'
alias glu='git pull upstream'
alias glum='git pull upstream master'

# pull/rebasing
alias glro='git pull --rebase origin'
alias glrom='git pull --rebase origin master'
alias glru='git pull --rebase upstream'
alias glrum='git pull --rebase upstream master'
alias grbiom='git fetch origin;git rebase -i origin/master'

# cherry pick
alias gcp='git cherry-pick'
alias gcpl='git rev-parse HEAD | pbcopy'

# diffing
alias gd='git diff'
alias gdom='git diff origin/master'

# cleaning
alias gcle='git clean -fd'

# fetching
alias gfo='git fetch origin'
alias gfu='git fetch upstream'

####################################################### node
alias nv="node -v"

#npm
alias ni="npm install"
alias nig="npm install --global"
alias nrt="npm run test"
alias nrdb="npm run dev-build"
alias nrl="npm run lint"
alias ns='npm start'
alias nre='npm run eslint'
alias nru='npm run unit_tests'
alias nrd='npm run dev'

#nvm
alias nvi='nvm install'
alias nvu='nvm use'

#cd
alias cdm='cd ~/git/meetingsui'
alias cdma='cd ~/git/meetingsui/meetingsadmin'
alias cdmp='cd ~/git/meetingsui/meetingspublic'
alias cdml='cd ~/git/meetingsui/meetingslib'
alias cdmb='cd ~/git/meetingsui/meetingsbase'
alias cdme='cd ~/git/meetingsui/meetingsembed'
alias cdmas='cd ~/git/meetingsui/meetingsadmin/selenium'
alias cds='cd ~/git/settings-ui/'
alias cdq='cd ~/git/quotes-ui'
alias cdqa='cd ~/git/quotes-admin'
alias cdp='cd ~/git/products-ui-components'
alias cdt='cd ~/git/timezone-utils'
alias cdc='cd ~/git/crm'
alias cdcs='cd ~/git/crm/crm_settings'
alias cdcd='cd ~/git/crm/crm_data'
alias cdi='cd ~/git/InboxConnectUtils'
alias cde='cd ~/git/InboundDbQuotes/inbounddb_quotes_emails_static'
alias cdco='cd ~/git/customer-data-objects'
alias cdr='cd ~/git/reference-resolvers'

# vim
alias vp='vim package.json'
alias vsc='vim static/static_conf.json'
alias rmn='rm -rf node_modules/'

#bend
alias bs='bend start'
alias by='bend yarn'
alias btl='bend yarn test-local'
alias bsm='bend start:multi'
alias bsmu='bend start:multi:update'
alias bsu='bend start:update'
alias bsui='bend start:ui'
alias bsumu='bend start:ui:multi:update'
alias bsum='bend start:ui:multi'

alias bsws='bend start:with-settings'
alias bss='bend start-settings'

#hs-static
alias hsr='hs-static run'
alias hsud='hs-static update-dependencies'
alias hsuhs='hs-static update-hs-static'

# k9
alias peg='ps -ef | grep'
alias k9='kill -9'

####################################################### docker
alias dr='docker run'
alias dp='docker ps'
alias dpa='docker ps -a'
alias drm='docker rm'
alias drma='docker rm -f $(docker ps -a -q)'
alias dim='docker images'
alias drmi='docker rmi'
alias drmia='docker rmi $(docker images -q)'

#docker-compose
alias dc='docker-compose'
alias dcu='docker-compose up'
alias dcd='docker-compose down'
alias dcr='docker-compose run'


# Common Aliases
alias ls='gls --color'
alias la='gls --color -lah'
alias cdb='cd ..'
alias cdbb='cd ../..'
alias cdbbb='cd ../../..'
alias cdbbbb='cd ../../../..'
alias cdb5='cd ../../../../..'
alias t='tail -f'
alias cdp='popd'
alias zshrc='vim ~/.zshrc' # Quick access to the ~/.zshrc file
alias sz='source ~/.zshrc'
alias s='source'
alias vimrc='vim ~/.vimrc'
alias omz='cd ~/.oh-my-zsh'
alias grep='grep --color'
alias h='history'
alias hg='history | grep'
alias fg='find ./ | grep'
alias dot='cd ~/dotfiles'
alias ehost='sudo vim /etc/hosts'
alias yolo='sudo'
alias na='vim ~/dotfiles/aliases.zsh'
# maven
alias mrmw='rm -rf ~/.m2/repository/com/constantcontact/web-content-svc'
# Bundler
alias be="bundle exec"
alias ber="bundle exec rake"
alias biebr="bundle exec /bin/rails_l1 s"
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
alias java86='export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_60.jdk/Contents/Home"'

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

# Vagrant
alias vu='vagrant up' 
alias vgs='vagrant global-status'
alias vs='vagrant ssh'
alias vp='vagrant provision'
alias vd='vagrant destroy'
alias vrp='vagrant reload --provision'

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
alias grh='git reset HEAD'
alias gnuke='git reset HEAD --hard'
# Rebasing
alias grb='git rebase'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbi='git rebase -i'
alias grbium='git rebase -i upstream/master'
alias grbiud='git rebase -i upstream/development'
alias grbm='git rebase master'
alias grbs='git rebase --skip'
alias gms='git merge --squash'
# Pushing
alias gpu='git push upstream'
alias gpo='git push origin'
alias gpom='git push origin master'

alias gpoi='git push origin integration'
alias gpor='git push origin release'
alias gpod='git push origin development'

alias gpof='git push origin --force'
alias gpofi='git push origin --force integration'
alias gpofr='git push origin --force release'
alias gpofd='git push origin --force development'
alias gpofm='git push origin --force master'

alias gpum='git push upstream master'
alias gpui='git push upstream integration'
alias gpud='git push upstream development'

alias attack='git push upstream --force'
alias attackm='git push upstream --force master'
alias attackr='git push upstream --force release'
alias attacki='git push upstream --force integration'
alias attackd='git push upstream --force development'

alias gcl='git clone'
# Checking Out
alias gco='git checkout'
alias gcod='git checkout development'
alias gcor='git checkout release'
alias gcom='git checkout master'
alias gcoi='git checkout integration'
# Committing
alias gaa='git add *'
alias gau='git add -u'
alias gcmsg='git commit -m'
alias gca='git commit --amend'
# Pulling
alias glo='git pull origin'
alias glom='git pull origin master'
alias gloi='git pull origin integration'
alias glor='git pull origin release'
alias glod='git pull origin development'
alias glu='git pull upstream'
alias glud='git pull upstream development'
alias glui='git pull upstream integration'
alias glur='git pull upstream release'
alias glum='git pull upstream master'
# pull/rebasing
alias glro='git pull --rebase origin'
alias glrom='git pull --rebase origin master'
alias glroi='git pull --rebase origin integration'
alias glror='git pull --rebase origin release'
alias glrod='git pull --rebase origin development'
alias glru='git pull --rebase upstream'
alias glrum='git pull --rebase upstream master'
alias glrui='git pull --rebase upstream integration'
alias glrur='git pull --rebase upstream release'
alias glrud='git pull --rebase upstream development'
# diffing
alias gd='git diff'
alias gdo='git diff --oneline'
alias gcpl='git rev-parse HEAD | pbcopy'
# cleaning
alias gcle='git clean -fd'
# fetching
alias gfo='git fetch origin'
alias gfu='git fetch upstream'
alias gbcm='git fetch upstream;git reset --hard upstream/master'
alias gbcd='git fetch upstream;git reset --hard upstream/development'
alias gbc='git fetch upstream;git reset --hard'
# spui switchers
alias switch_dev="sudo rm /opt/cc/etc/environment.properties; sudo ln -s /opt/cc/etc/d1.environment.properties /opt/cc/etc/environment.properties"
alias switch_l1="sudo rm /opt/cc/etc/environment.properties; sudo ln -s /opt/cc/etc/l1.environment.properties /opt/cc/etc/environment.properties"
alias start_spui="cp ~/Documents/start_spui/.ruby-version ~/git/spui/spui-webapp; cd ~/git/spui/spui-webapp; cp ~/Documents/start_spui/1_ldap_vault.rb ~/git/spui/spui-webapp/config/initializers/1_ldap_vault.rb; cp ~/Documents/start_spui/spui-local-config.yml ~/git/spui/spui-webapp/config/spui-local-config.yml; DEV_ACCOUNT_ID=1100495881808 DEV_USER_UUID=91de826a-882a-45fb-8e66-872f15ffe42b rails s -p 3000"
#npm
alias ni="npm install"
alias nrt="npm run test"
alias nrdb="npm run dev-build"
alias nrl="npm run lint"
alias ns='npm start'
alias nre='npm run eslint'
alias nru='npm run unit_tests'
alias nrc='npm run chrome'
alias nrlc='npm run local-chrome'

#nvm
alias nvi="nvm install"
alias nvu="nvm use"
#cd
alias cdl='cd ~/git/contacts-listpicker-ui'
alias cdc='cd ~/git/contacts-core'
alias cdls='cd ~/git/listgrowth-static'
alias cds='cd ~/git/signup-form-widget'
alias cddd='cd ~/git/distui/distuiWeb/distui-war'
alias cdv='cd ~/git/ctct/apps/visitor'
alias cdd='cd ~/git/distui'
alias cdu='cd ~/git/ctct/apps/ui'
#core
alias rap='rake assets:precompile'
alias re='RAILS_ENV=production_local_d1 bundle exec bin/secure_rails s'
alias grshud='git reset --hard upstream/development'
alias grshum='git reset --hard upstream/master'
#node
alias nv='node -v'

# work aliases
alias pup='cd ~/git/puppet'
alias cti='cd ~/git/ctct;java6;s env.sh'
# brackets
alias b='brackets'
#docker-compose
alias dc='docker-compose'
alias dcu='docker-compose up'
alias dcd='docker-compose down'
alias dcr='docker-compose run'
#docker
alias dr='docker run'
alias dp='docker ps'
alias dpa='docker ps -a'
alias drm='docker rm'
alias drma='docker rm -f $(docker ps -a -q)'
alias dim='docker images'
alias drmi='docker rmi'
alias drmia='docker rmi $(docker images -q)'
#docker-machine
alias dm='docker-machine'
alias dme='docker-machine env'
alias dms='docker-machine start'
alias dmr='docker-machine restart'
alias dmst='docker-machine stop'
alias dmrm='docker-machine rm'
# fefe
alias feona='ssh dit@feona.party'
# grunt
alias rub='grunt build'
alias ruw='grunt work'

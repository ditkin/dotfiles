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
alias cdg='cd ~/git'
alias zshrc='vim ~/.zshrc' # Quick access to the ~/.zshrc file
alias sz='source ~/.zshrc'
alias s='source'
alias vimrc='vim ~/.vimrc'
alias omz='cd ~/.oh-my-zsh'
alias grep='grep --color'
alias h='history'
alias hg='history | grep'
alias fin='find ./ -iname'
alias dot='cd ~/dotfiles'
alias ehost='sudo vim /etc/hosts'
alias yolo='sudo'
alias na='vim ~/dotfiles/aliases.zsh'

alias feona='ssh dit@feona.party'
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
alias gbcm='git fetch upstream;git reset --hard upstream/master'

# Rebasing
alias grb='git rebase'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbi='git rebase -i'
alias grbm='git rebase master'
alias grbs='git rebase --skip'
alias gms='git merge --squash'

# Pushing
alias gpu='git push upstream'
alias gpo='git push origin'
alias gpom='git push origin master'
alias gpof='git push origin --force'
alias gpofm='git push origin --force master'
alias gpum='git push upstream master'
alias attack='git push upstream --force'
alias attackm='git push upstream --force master'

# Cloning
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
alias glu='git pull upstream'
alias glum='git pull upstream master'

# pull/rebasing
alias glro='git pull --rebase origin'
alias glrom='git pull --rebase origin master'
alias glru='git pull --rebase upstream'
alias glrum='git pull --rebase upstream master'
alias grbium='git fetch upstream;git rebase -i upstream/master'

# cherry pick
alias gcp='git cherry-pick'
alias gcpl='git rev-parse HEAD | pbcopy'

# diffing
alias gd='git diff'
alias gdo='git diff --oneline'

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
alias cdl='cd ~/git/contacts-listpicker-ui'
alias cdc='cd ~/git/contacts-core'

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


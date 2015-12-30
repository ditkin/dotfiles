# Common Aliases
alias la='ls -lah'
alias cdb='cd ..'
alias cdbb='cd ../..'
alias cdbbb='cd ../../..'
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

# Bundler
alias be="bundle exec"
alias bl="bundle list"
alias bp="bundle package"
alias bo="bundle open"
alias bu="bundle update"
alias bi="bundle install"
alias bcn="bundle clean"

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
alias rvl='rvm list'
alias rvu='rvm use'
alias rgu='rvm gemset use'
alias rgc='rvm gemset create'
alias rgl='rvm gemset list'

# Gem
alias gi='gem install'

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
alias gcoi='git checkout master'
# Committing
alias gaa='git add *'
alias gau='git add -u'
alias gcm='git commit -m'
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

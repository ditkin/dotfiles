# Common Aliases
alias ls='gls --color'
alias la='gls --color -lah'
alias cdb='cd ..'
alias cdbb='cd ../..'
alias cdbbb='cd ../../..'
alias cdbbbb='cd ../../../..'
alias cdb5='cd ../../../../..'
alias cdg='cd ~/git'
alias t='tail -f'
alias cdv='cd ~/git/ctct/apps/visitor'
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
# git aliases
alias cdp='cd ~/git/products-ui-components'
alias cds='cd ~/git/settings-ui-products'
alias cdo='cd ~/git/customer-data-objects'
alias cdc='cd ~/git/crm'
alias cdqa='cd ~/git/quotes-admin'
alias cdl='cd ~/git/line-items-ui'
alias cdr='cd ~/git/reference-resolvers'
# bend
alias brs='bend reactor serve'
alias by='bend yarn'
alias bs='bend start'
# package
alias vp='vim package.json'
alias vsc='vim static_conf.json'
# java

alias jv="java -version"



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
alias gcbcm='git fetch origin;git checkout master;git reset HEAD --hard'
alias gcom='git fetch origin;git checkout master'
# cherry pick
alias gcpl='git rev-parse HEAD | tr -d '\n' | pbcopy'
alias gcp='git cherry-pick'
# Rebasing
alias grb='git rebase'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbi='git rebase -i'
alias grbiom='git rebase -i origin/master'
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
alias gcoi='git checkout integration'
# Committing
alias gaa='git add *'
alias gau='git add -u'
alias gc='git commit -m'
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
# cleaning
alias gcle='git clean -fd'
# fetching
alias gfo='git fetch origin'
alias gfu='git fetch upstream'
#npm
alias ni="npm install"
alias nrt="npm run test"
alias nrdb="npm run dev-build"
alias nrl="npm run lint"
alias ns='npm start'
alias nre='npm run eslint'
alias nru='npm run unit_tests'

#cd
# work aliases
alias pup='cd ~/git/puppet'
alias cti='cd git/ctct;java6;s env.sh'
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

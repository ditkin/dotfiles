# Path to your oh-my-zsh installation.
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export NVM_DIR="$HOME/.nvm"
export NVM_NODEJS_ORG_MIRROR=http://nodejs.org/dist
. "$(brew --prefix nvm)/nvm.sh"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
# Setup for contacts stuff
export ZSH=/Users/ditkin/.oh-my-zsh

source ~/dotfiles/antigen/antigen.zsh
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git rvm common-aliases battery thefuck bundler rake ruby tmux mvn selenium vagrant npm docker)

export PATH="/bin:/usr/local/bin:/usr/bin:/Users/ditkin/bin:/usr/sbin:/Users/ditkin/.rvm/gems/ruby-2.2.1/bin:/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"

source $ZSH/oh-my-zsh.sh
antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme garyblessington
# CUSTOM ZSH PROMPT
PROMPT='%{$fg[magenta]%}%~%{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}% %{$reset_color%}: '
ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg[blue]%}"
#ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

eval "$(thefuck --alias fuck)"
export LS_COLORS='di=32:fi=31:ex=5:ln=4;31:or=4:pi=5:so=5:bd=5'
#eval `gdircolors ~/.dir_colors`
#export EDITOR=`which vim`
#export SSL_CERT_FILE="~/git/puppet/modules/dist/cacerts/files/ca-bundle.crt"
[ -s "/Users/ditkin/.scm_breeze/scm_breeze.sh" ] && source "/Users/ditkin/.scm_breeze/scm_breeze.sh"
source $HOME/dotfiles/aliases.zsh

nvm use 4.4
rvm use 2.0.0

#contacts-core
# export JRUBY_OPTS='--2.0 -J-Dfile.encoding=UTF-8 -J-Xms3072m -J-Xmx3072m -J-XX:MaxPermSize=512m -J-XX:MaxDirectMemorySize=256M -J-XX:+UseG1GC -J-server -J-Djruby.compile.invokedynamic=false'
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

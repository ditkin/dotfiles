# Path to your oh-my-zsh installation.
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export NVM_DIR="$HOME/.nvm"
export NVM_NODEJS_ORG_MIRROR=http://nodejs.org/dist
. "$(brew --prefix nvm)/nvm.sh"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

source ~/dotfiles/antigen/antigen.zsh
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git rvm common-aliases battery thefuck bundler rake ruby tmux mvn selenium vagrant npm docker)

#export PATH="/bin:/usr/local/bin:/usr/bin:/Users/ditkin/bin:/usr/sbin:/Users/ditkin/.rvm/gems/ruby-2.2.1/bin:/Library/Frameworks/Python.framework/Versions/3.4/bin:/Users/ditkin/git/ctct/maven/ccbin:${PATH}"

antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme garyblessington
# CUSTOM ZSH PROMPT
PROMPT='%{$fg[magenta]%}%~%{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}% %{$reset_color%}: '
ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

eval "$(thefuck --alias fuck)"
export LS_COLORS='di=32:fi=31:ex=5:ln=4;31:or=4:pi=5:so=5:bd=5'
[ -s "/home/dit/.scm_breeze/scm_breeze.sh" ] && source "/home/dit/.scm_breeze/scm_breeze.sh"
source $HOME/dotfiles/aliases.zsh

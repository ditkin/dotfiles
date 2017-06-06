# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin:$JAVA_HOME"

. "$(brew --prefix nvm)/nvm.sh"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# Setup Antigen
source ~/dotfiles/antigen/antigen.zsh

# General Usability Config
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"

# Add A Million Zsh Plugins
plugins=(git rvm common-aliases battery thefuck bundler rake ruby tmux mvn selenium vagrant npm docker)

# Initialize oh-my-zsh
export ZSH=/Users/ditkin/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Configure oh-my-zsh
antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme garyblessington

# Configure Custom Pretty Shell
PROMPT='%{$fg[magenta]%}%~%{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}% %{$reset_color%}: '
ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
export LS_COLORS='di=32:fi=31:ex=5:ln=4;31:or=4:pi=5:so=5:bd=5'

# Fuck... For Fun
eval "$(thefuck --alias fuck)"

# Setup Scm Breeze
[ -s "/Users/ditkin/.scm_breeze/scm_breeze.sh" ] && source "/Users/ditkin/.scm_breeze/scm_breeze.sh"

# Load Aliases
source $HOME/dotfiles/aliases.zsh

# Configure Package Managers For Work
nvm use 4.4
rvm use 2.0.0

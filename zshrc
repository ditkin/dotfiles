# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin:$HOME/bin"

# Initialize Nvm And Rvm
. "$(brew --prefix nvm)/nvm.sh"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# Configure Generic Shell Operations For Usability
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"

# Add A Million Zsh Plugins
plugins=(git rvm common-aliases ruby npm docker)

# Initialize oh-my-zsh
export ZSH=/Users/ditkin/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Configure oh-my-zsh With Antigen
source ~/dotfiles/antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme gallois

eval "$(thefuck --alias fuck)"
export LS_COLORS='di=32:fi=31:ex=5:ln=4;31:or=4:pi=5:so=5:bd=5'

# Setup Scm Breeze For Pretty Gitty
[ -s "/Users/ditkin/.scm_breeze/scm_breeze.sh" ] && source "/Users/ditkin/.scm_breeze/scm_breeze.sh"

# Load Aliases
source $HOME/dotfiles/aliases.zsh

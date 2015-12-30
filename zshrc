# Path to your oh-my-zsh installation.
export ZSH=/Users/ditkin/.oh-my-zsh

source ~/dotfiles/antigen/antigen.zsh
# Set name of the theme to load.

# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="agnoster"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git rvm common-aliases battery thefuck bundler rake ruby tmux mvn selenium vagrant)

export PATH="/bin:/usr/bin:/usr/local/bin:/Users/ditkin/bin:/usr/sbin:/Users/ditkin/.rvm/gems/ruby-2.2.1/bin:/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"

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
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[ -s "/Users/ditkin/.scm_breeze/scm_breeze.sh" ] && source "/Users/ditkin/.scm_breeze/scm_breeze.sh"
source $HOME/dotfiles/aliases.zsh

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/nblank/.oh-my-zsh
bindkey -v

# Who knows what got fucked up here, This fixes special key inputs for ins, del, etc...
 bindkey "\eOd" backward-word
 bindkey "\eOc" forward-word
 bindkey  "\e[1~" beginning-of-line
 bindkey  "\e[4~" end-of-line
 bindkey  "\e[5~" beginning-of-history
 bindkey  "\e[6~" end-of-history
 bindkey  "\e[3~" delete-char
 bindkey  "\e[2~" quoted-insert
 bindkey  "\eOH" beginning-of-line
 bindkey  "\eOF" end-of-line
 bindkey  "\e[H" beginning-of-line
 bindkey  "\e[F" end-of-line
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
#DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

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
plugins=(
  git
  docker
  celery
  brew
  tmux
  tmuxinator
  web-search
  vi-mode
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8


# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


globalias() {
   zle _expand_alias
   zle expand-word
   zle self-insert
}
zle -N globalias

# control-space  expands all aliases, including global
#  space to make a normal space
bindkey -M emacs " " magic-space
bindkey -M viins " " magic-space

bindkey -M emacs "^ " globalias
bindkey -M viins "^ " globalias

# normal space during searches
bindkey -M isearch " " magic-space

# TODO: Change
alias vim='/Applications/MacVim.app/Contents/MacOS/vim'
#export PS1="\[\033[0;33m\]=== \u@\h: \[\033[1;33m\]\w \[\033[0;33m\]\$ \[\033[0;0m\]"

# Powerline
. /Users/nblank/anaconda/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
export KEYTIMEOUT=1
source /Users/nblank/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# May have to run on startup
# powerline-daemon -q
# powerline-config tmux setup
# export LSCOLORS=''

export EDITOR='vim'
source ~/.aliases.sh

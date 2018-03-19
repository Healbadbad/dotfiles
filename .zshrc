# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/dotfiles/oh-my-zsh #/Users/nblank/.oh-my-zsh
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

# Theme
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Plugins
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
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


# Make Spacebar expand aliases
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
# alias vim='/Applications/MacVim.app/Contents/MacOS/vim'
alias vim='/Applications/MacVim.app/Contents/MacOS/vim'
#export PS1="\[\033[0;33m\]=== \u@\h: \[\033[1;33m\]\w \[\033[0;33m\]\$ \[\033[0;0m\]"

# Powerline
#. /Users/nblank/anaconda/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
# TODO: This is really slow, better would be to do which pip/3, then go from there 
source `pip3 show powerline-status | grep Location | awk '{print $2}'`/powerline/bindings/zsh/powerline.zsh
export KEYTIMEOUT=1
source ~/dotfiles/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# May have to run on startup
powerline-daemon -q
powerline-config tmux setup
# export LSCOLORS=''

export EDITOR='vim'
source ~/.aliases.sh
source ~/.functions.sh

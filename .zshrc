# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(web-search you-should-use zsh-syntax-highlighting zsh-autosuggestions z git vi-mode sudo)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -la --color=auto'
alias c='clear'
alias e='exit'
alias x='startx'
alias ra='ranger'
alias b='btop'
alias m='make'
alias vi='nvim'
alias n='neofetch'
alias lg='lazygit'
alias gd='go doc'
alias mb='mariadb'
alias dbl='cd ~/Workspace/code/go/blog/src/'
alias dvi='cd ~/.config/nvim'
alias dch='cd ~/Workspace/code/go/chatroom/src/'
alias dtest='cd ~/Workspace/code/c/test/'
alias dvoc='cd ~/Workspace/code/go/voc/src/'
alias dblog='cd ~/Workspace/blog/stanwon.github.io'
alias dmini='cd ~/Workspace/code/c/minios/'
alias da='cd ~/Workspace/code/c/acwj-/'
alias dm='cd ~/Workspace/code/c/microtcp/'
alias or='omz reload'
alias vv='nvim $(fzf)'
alias al='alias | less'
alias ge='google'
alias jk='jekyll'

# export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -l -g ""'
export EDITOR=nvim
export TERMINAL=alacritty
export PATH=$PATH:/opt/friendly-arm/toolchain/4.9.3/bin:/tmp/tipgodoc/b/go/bin/:/home/stan/go/bin:~/.local/share/bin/:~/.local/share/bin/cron:~/.local/share/bin/statusbar:/home/stan/Workspace/scripts:~/.local/share/gem/ruby/3.0.0/bin
export GCC_COLORS=auto

source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

# function cf() {
  # local dir
  # dir=$(find ${1:-.} -path '*/\.*' -prune \
				  # -o -type d -print 2> /dev/null | fzf +m) &&
  # cd "$dir"
# }
function fkill() {
  local pid
  pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')

  if [ "x$pid" != "x" ]
  then
	echo $pid | xargs kill -${1:-9}
  fi
}

function dmenu-search {
  # zle .kill-whole-line
  # zle -U "source ~/Workspace/scripts/dmenu/dbdb.sh"
  source ~/Workspace/scripts/dmenu/dbdb.sh
}
zle -N dmenu-search

bindkey '\C-o' dmenu-search
bindkey ';' autosuggest-accept

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
VI_MODE_SET_CURSOR=true
# defaults
VI_MODE_CURSOR_NORMAL=1
VI_MODE_CURSOR_VISUAL=2
VI_MODE_CURSOR_INSERT=3
VI_MODE_CURSOR_OPPEND=0

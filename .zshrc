# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_HOST_TEMPLATE="%m/%y"
export TERM="xterm-256color"
# Path to your oh-my-zsh installation.
  export ZSH=/home/gnagy/.oh-my-zsh


export PATH=$PATH:~/.local/anaconda2/bin:~/.local/bin:/usr/local/go/bin:~/.local/go/bin
export GOPATH=~/.local/go
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_COLOR_SCHEME='dark'
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
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
#COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

export HISTSIZE=5000000
export SAVEHIST=$HISTSIZE
export HISTFILE=~/.zsh_history

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
autojump
fzf-zsh  
git
battery
svn
ubuntu
colored-man-pages
dircycle
mix
rebar
web-search
zsh-syntax-highlighting
zsh-autosuggestions
you-should-use
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
alias svi="sudo vi"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE=fg=10
bindkey '^ ' autosuggest-accept
alias p="ipython"
alias c="cat"
POWERLEVEL9K_USER_ICON="\uf2ae"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir virtualenv vcs)
export BROWSER=/opt/firefox/firefox

# TAPS:
# common pipe­ending commands (taps)
alias -g  A='|head'           # head (also A<n> were <n> is 1-30)
alias -g  B='|grep -v "^[       ]*$"' # kill blank rows
alias -g  C='|sort -f|uniq -c' # unique w/ counter (C0=no pre­sort)
alias -g C0='|uniq -c'        #
# D
alias -g  E='|perl -ne'       # as F, w/o implied print (E0 slurps)
alias -g E0='|perl -0777ne'   #
alias -g  F='|perl -pe'       # filter (perl, F0 slurps)
alias -g F0='|perl -0777pe'   #
alias -g  G='|egrep -i'       # (e)grep (G0 searches stderr too)
alias -g Gv='|egrep -iv'      # (e)grep (G0 searches stderr too)
alias -g G0='|&egrep -i'      #
# H
alias -g  I='|column'         # columnify (think: `I' is a column)
# J
alias -g  K='**/*rl(.)'       # note: not a tap
alias -g  L='|wc -l'          # line count
alias -g  M='|&less'          # more (M0 ingnores STDERR)
alias -g M0='|less'           #
# N  O  P  Q
alias -g  P='**/*py(.)'       # note: not a tap
alias -g  R='|unhtml'         # remove HTML (R0 removes man codes)
alias -g R0='|perl -pe "s/.[\b]//g"' # remove man page ^H codes
alias -g RL='apps/**/*rl(.)'  # note: not a tap
alias -g  S='|sort -f'        # alphabetic sort (S0 for numeric)
alias -g S0='|sort -n'        #
alias -g  T='|iconv -flatin1 -tutf-8' # latin1 to utf-8
alias -g TT='|iconv -futf-8 -tlatin1' # utf-8 to latin1
alias -g  U='|sort |uniq'     # unique (U0=no pre­sort)
alias -g U0='|uniq'           #
# V W
alias -g  X='|tr -s " " "\t" |cut -f' # cut on tabs and spaces
#alias -g  Y='|tee /tmp/tee_output.txt'
alias -g  Y='&>/dev/null &; disown' # fork process (`Y' is a fork)
alias -g  Z='|tail'           # tail (also Z<n> were <n> is 1-30)

alias -s txt='less -rE'
# clean escape's
alias stresc='sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g"'
#alias d='docker'
alias dps='docker ps -a --format "{{.ID}}:\t{{.Status}}\t{{.Names}}"'
alias dc=docker-compose

# aliases A<n> and Z<n> (where <n> is 1-30)
for ((i=1; i<=30; i++)); do     #
    alias -g A$i="|grc head -n$i"   # head (1-30 rows)
    alias -g Z$i="|grc tail -n$i"   # tail (1-30 rows)
done                            #
unset i                         #


# for laziness
alias     al='alias'                # alias-alias
alias       e='ec'
alias       f='find '
alias       o='open '
alias     nd='mkdir `date -I` && cd `date -I`'
alias     ng='noglob '              # shorter noglob command
alias   open='xdg-open'             # remember the command name
alias     po='popd'
alias    psu='ps -u$USER'           # all my processes
alias  rwget='noglob wget -nc -p --no-parent -r -l0'
alias      t='date +"%H.%M"'        # time in HH.MM format
alias  unzip='noglob unzip'         # don't use globs with unzip
alias    utf='file apps/*/src/*erl apps/*/include/*hrl Makefile | grep "UTF"'
alias   word='sed `perl -e "print int rand(99999)"`"q;d" /usr/share/dict/words'
alias     pd='pushd'
alias     po='popd'

alias     grep='grep --colour=tty --binary-files=text'
alias        h='fc -l -25'
alias    kdiff='kdiff3'
alias       ls='ls --color=tty '
alias        l='ls -CF --color=tty '
alias       l.='ls .[a-zA-Z]* --color=tty -d'
alias       ll='ls -l --color=tty '
alias      ltr='ls -ltr --color=tty '
alias       pu='ps -fu $USER'
alias   sqlite='rlwrap sqlite3'

# speling | dyslexia
alias -g    vi='vim'
alias -g     c='cat'

alias       ping="grc ping"
alias traceroute="grc traceroute"
alias       diff="grc diff"
alias    netstat="grc netstat"
alias        gcc="grc gcc"
alias      wdiff="grc wdiff"
alias ldapsearch="grc ldapsearch"
alias       last="grc last"
alias   ifconfig="grc ifconfig"
alias      mount="grc mount"
alias        dig="grc dig"
alias         ps="grc ps"
alias         df="grc df"
alias        mtr="grc mtr"
alias        cvs="grc cvs"

alias e='emacsclient -n '


# Enable highlighters
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

# Override highlighter colors
#ZSH_HIGHLIGHT_STYLES[default]=none
#ZSH_HIGHLIGHT_STYLES[alias]=bold
#ZSH_HIGHLIGHT_STYLES[builtin]=bold
#ZSH_HIGHLIGHT_STYLES[function]=bold
#ZSH_HIGHLIGHT_STYLES[command]=bold
#ZSH_HIGHLIGHT_STYLES[precommand]=underline
#ZSH_HIGHLIGHT_STYLES[commandseparator]=none
#ZSH_HIGHLIGHT_STYLES[path]=fg=214,underline
#ZSH_HIGHLIGHT_STYLES[history-expansion]=underline
#ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=none
#ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=none
#ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
#ZSH_HIGHLIGHT_STYLES[assign]=none
export EDITOR=vi

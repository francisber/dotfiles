#vars
ZSH_DIR=~/dotfiles/.zsh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
#export PATH=$HOME/scripts:$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

#system
export EDITOR=vim

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

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
plugins=(git docker)

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

#bindkey -v

#export CDPATH=.:˜:˜/dev:˜/dev/symfony

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#ORF
function nbo(){
  git checkout -b feature/ORFDV001-$1/$2
}
function drcon(){
 docker compose rm -vsf $1 && docker compose up -d $1 
}
function nboe(){
 git checkout -b bug/ORFDV001-$1/$2
}
alias py="python"
alias main="gc main"
alias deve="gc develop"
alias devep="deve && pull"
alias upbdeve="upb develop"
# ------
alias tt="tmux"
#alias music='ncmpcpp -h 192.168.178.100 -p 5555' 
alias v="vim"
alias ss="source ~/.zshrc"
alias fix="php-cs-fixer fix"
alias fixsoon="fix ../soon-at-endava"
alias v="vim"
alias vs="v ~/.zshrc"
alias s="source"
alias sz="s ~/.zshrc "
alias w="which"
alias phpcli="docker compose run --rm php-cli"
alias dkc="docker compose"
alias dk="docker"
alias prunesys="docker system prune -a --volumes"
alias prunevol="docker volume prune"
function dk-stop-all() {
  docker kill $(docker ps -q)
}
alias dkpa="docker ps -a"
alias dkp="docker ps"
alias exorfto='export ORF_ON_NPM_TOKEN=KVhwfqhHTGn3zLCAeoZR'
alias orfdomain='symfony proxy:domain:attach orf'
alias ngorf="dk exec -it orf-nginx-1 sh"
alias dkex="docker exec -it $1 sh"
alias dkls='dk container ls'
alias dkup="docker compose  up -d"
alias dkupb="docker compose up --build"
alias dklog="dk logs"
alias rustscan="docker run -it --rm --name rustscan rustscan/rustscan:latest"

alias pn="pnpm"
alias npb="npm run build"
alias start="npm start"
alias npi="npm install"

alias cheat="~/go/bin/cheat"
alias pbc="./bin/console"
alias brewup="HOMEBREW_NOT_AUTO_UPDATE=1 brew install"
alias c="cheat"
alias t="tree"
alias tl="t -L"
alias endgitssh="ssh-add ~/.ssh/id_ed25519"
alias ht='httpie'
alias clidb='mycli mysql://db_user@localhost:8081 -proot'

alias greso='git reset --soft HEAD~1'
alias refl='git reflog'
alias grun='gitlab-runner'
alias grmcache='git rm -r --cached'
alias gres='git restore ' 
alias push='git push'
alias pushf='git push -f'
alias pullp='git pull --prune'
alias pull='git pull'
alias pullf='git pull -f'
alias gs='git status'
alias reflog='git reflog'
function commit() {
  MSG="$1"
  DESC="$2"
  EXTRA="$3"
  if [ -z "$MSG" ]; then
    false
  else
    if [ -z "$DESC" ]; then
      git commit -m "$MSG" $EXTRA
    else
      git commit -m "$MSG" -m "$DESC" $EXTRA
    fi
  fi
}
alias gm="commit"
function gmn() {
  commit "$1" "$2" -n
}
function startorf() {
    gc develop
    git pull --prune
    symfony proxy:domain:attach orf
    export ORF_ON_NPM_TOKEN=KVhwfqhHTGn3zLCAeoZR
    up
    docker compose rm -vsf elasticsearch
    docker compose up -d elasticsearch
    make init
}
function cuser() {
    symfony console sonata:user:create superuser superuser@exozet.eu Django --quiet
    symfony console sonata:user:promote superuser ROLE_ORF_ADMIN --quiet
}
alias startoday='startorf'
function fixelastica() {
	symfony console fos:elastica:populate
	symfony console assets:install --symlink
	volta run npm ci
}
alias fixe='fixelastica'
alias gc="git checkout $1"
alias gcb="gc -b"
alias gbm="git branch -m"
alias gb='git branch'
alias gbd="git branch --delete $1"
alias gpdorigin="git push -d origin $1"
alias gba="git branch -a"
alias diffm= 'git diff main'
alias diff='git diff'
alias add='git add .'
alias addf='git add'
function upb(){
	git fetch origin $1
	git pull origin $1
}

alias messcon="symfony console messenger:consume async --verbose"
alias messconoff="sc messenger:stop-workers"
alias dbq="sc doctrine:query:sql"
alias gi='gitui'
alias tests='ls -R tests/PHPUnitLegacy/ |sort -R |tail -6'
alias gamv='git add . 
	git commit --no-verify -m'
alias gam='git add .
	git commit -m'
alias log="git log --oneline --graph --decorate"
alias logmain="git log --graph"
alias upbr='git fetch
git rebase'
alias reba="git rebase"
alias rebai="git rebase -i"
alias rebac="git rebase --continue"
alias rebam="git rebase main"
alias gre="git reset"
alias greh="git reset --hard"
alias grehe="git reset --hard  HEAD^"
alias rebaa="git rebase --abort"
alias gstp='git stash pop'
alias gst='git stash'
alias cherry="git cherry-pick"
alias cherryc="git cherry-pick --continue"
alias refor='./bin/lint'
alias amend='git commit --amend'
alias amendd='git commit --amend --no-edit'
alias addam='git add -A ; amendd'
alias ci='composer install'
alias cu='composer update'
alias cr='composer require'
alias gr='git reset --hard'
alias sunf='sun --group=temp'
alias sp='symfony php'
alias static='symfony php vendor/bin/phpstan analyse'
alias style='symfony php vendor/bin/phpcbf -p --parallel=16 || true'
alias rector='symfony php vendor/bin/rector process --no-progress-bar'
alias warmstatic='symfony php bin/console cache:warmup --env=dev'
alias sun="symfony php vendor/bin/phpunit"
alias down="make down"
alias up="make up"
alias reset="make reset"
alias init="make init"
alias makem="sc make:migration"
alias makee="sc make:entity"
alias docm="sc doc:migration:migrate"
alias sy='symfony'
alias caclear="sc cache:clear"
function updbf() {
symfony console cache:clear
symfony console doc:database:drop --force
symfony console doc:database:create --no-interaction
symfony console doc:migrations:migrate --no-interaction
symfony console doc:fixtures:load --no-interaction --purge-exclusions=role --purge-exclusions=base_phase --purge-exclusions=interviewer
newuserf
}
function updb(){
sc cache:clear
sc doc:database:drop --force
sc doc:database:create --no-interaction
sc doc:migration:migrate --no-interaction
}
function sc() { # symfony console
  local dir="$(git rev-parse --show-toplevel 2>/dev/null)"
  if [ -z "$dir" ]; then
    dir="$(pwd)"
  fi
  if [ -e "${dir}/bin/console" ]; then
    # php "${dir}/bin/console" $@
    cwd="$(pwd)"
    cd "$dir" # does not allow console path
    symfony console $@
    cd "$cwd"
  else
    echo ${dir}/bin/console not found
    return 1
  fi
}
migrate(){
  sc make:migration --no-interaction 
  sc doctrine:migrations:migrate --no-interaction
}

alias wt="webtorrent -o /tmp --mpv --quiet"
alias wtm="xclip -o -sel clip | xargs webtorrent -o /tmp --mpv --quiet " # wtm[ovie]
alias wtc="wtm" # wtc[lipboard]
wts() {
  TORRENT="$1"
  SELECT="$2"
  if [ -z "$SELECT" ]; then
    webtorrent "$TORRENT" -o /tmp --quiet -s
  else
    webtorrent "$TORRENT" -o /tmp --mpv --quiet -s "$SELECT" 2>/dev/null
  fi
}
wtsn() {
  TORRENT="$1"
  SELECT="$2"
  webtorrent "$TORRENT" -o /tmp --not-on-top --no-quit -s "$SELECT"
}
alias in="grep --line-number --with-filename --no-messages --recursive --exclude-dir=node_modules --exclude-dir=coverage --exclude-dir=dist --exclude-dir=vendor --exclude=package-lock.json"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias newuser='symfony console  sonata:user:create --super-admin'
alias newuserf='newuser --super-admin fran fran@a.a 1234'

alias audio1="mpv --video=no 1.1.mp3 --loop-file=inf"
alias audio="mpv --video=no --loop-file=inf"
alias cal3='cal -3'
alias caly='cal -y'

# BEGIN SNIPPET: Platform.sh CLI configuration
HOME=${HOME:-'/Users/fberbesi'}
export PATH="$HOME/"'.platformsh/bin':"$PATH"
if [ -f "$HOME/"'.platformsh/shell-config.rc' ]; then . "$HOME/"'.platformsh/shell-config.rc'; fi # END SNIPPET

alias l="lsd -l"
alias la="lsd -la"

alias cronf="sudo crontab -u fberbesi"
alias cronfe="cronf -e"
alias cronfl="cronf -l"
alias cronfh="cronf --help"

#oraclett
alias o="oraclett"
alias opl="oraclett project list"

#mysql
alias ystop="brew services stop mysql"
alias mystart="brew services star mysql"
alias mystartd="mysql.server start"
alias mystopd="mysql.server stop"
alias myroot="mysql -u root -p"

#source ~/.zsh/transmission.zsh
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export DOCKER_HOST=unix:///Users/fberbesi/.rd/docker.sock

#colored-man
alias cm="~/dotfiles/scripts/colored-man/colored-man.sh"

#files
alias cat="bat"

#inspect folders
alias lsa="ls -a"

#copy conf dotfiles
alias copyconf="cp ~/.zshrc ~/.tmux.conf ~/dotfiles/conf"

# import aliases
source $ZSH_DIR/init.zsh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

alias tmx="TERM=screen-256color-bce tmx"
alias vi="mvim -v"
alias sc='script/console'
alias scd='script/console --debugger'
alias ss='script/server'
alias ssd='script/server --debugger'
alias be='bundle exec'
alias gst='git status'
alias gl='git pull'
alias gp='git push'
alias gd='git diff | mvim'
alias gca='git commit -a -v'
alias gcvm='git commit -v -m'
alias gcm='git commit -m'
alias gcam='git commit -a -v -m'
alias gb='git branch'
alias gba='git branch -a'
alias gch='git checkout'
alias gchb='git checkout -b'
alias nginx='sudo /usr/local/nginx/sbin/nginx'
alias ber='bundle exec rspec'
alias pj='ruby -rjson -rpp -e "pp JSON.parse(\$stdin.read)"'
alias bi='bundle install'
alias bers='bundle exec rails s'
alias bec='bundle exec rails c'
alias wipit='bundle exec rspec -t @wip'
alias gap="git add -p"
PS1='\u@\h:\w '
export CC=gcc-4.2
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
##
# Your previous /Users/andy/.bash_profile file was backed up as /Users/andy/.bash_profile.macports-saved_2012-01-02_at_16:41:56
##

# MacPorts Installer addition on 2012-01-02_at_16:41:56: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
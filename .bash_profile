# Git branch in prompt.
parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

# export PS1="\u@\h \W\[\033[36m\]\$(parse_git_branch)\[\033[1m\] $ "

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\$(parse_git_branch)\[\033[33;1m\]\w\[\033[m\]\$ "

# export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

export NVM_DIR="/Users/guy/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

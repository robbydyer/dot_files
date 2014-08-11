#!/bin/bash

function sensu_silence {
    curl -i -X POST -d {} http://sensu-cluster.int.tropo.com:4567/stashes/silence/$1
}

[ -f $HOME/.bash_colors ] && source $HOME/.bash_colors
[ -f $HOME/.git_prompt.sh ] && source $HOME/.git_prompt.sh
alias vg='vagrant'
alias vs='vagrant ssh'
alias c='cd ~/CHEF'
alias o='cd ~/OMNIBUS'
alias be='bundle exec'
alias gs='git status'
alias gd='git diff'
alias gp='git push'
alias gc='git commit'
alias ga='git add'
alias g='git'
alias tailf='tail -f'
alias kcu='knife cookbook upload'
alias keff='knife environment from file'
alias krff='knife role from file'
alias kne='knife node edit'
alias k='kitchen'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:$HOME/ANDROID/adt-bundle-mac-x86_64-20130522/sdk/platform-tools/


export HISTFILESIZE=10000
export HISTSIZE=10000

export EDITOR=$(which vim)


#GIT_PS1_SHOWDIRTYSTATE=1
#GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWCOLORHINTS=1

export MYPS='$(echo -n "${PWD/#$HOME/~}" | awk -F "/" '"'"'{if (length($0) > 24) { if (NF>4) print $1 "/" $2 "/.../" $(NF-1) "/" $NF; else if (NF>3) print $1 "/" $2 "/.../" $NF; else print $1 "/.../" $NF; } else print $0;}'"'"')'

#PROMPT_COMMAND='__git_ps1 "\[$Blue\]<>\[$Yellow\]\[$Yellow\]\w\[\033[m\]" "\[$White\]\$ "'
PROMPT_COMMAND='__git_ps1 "\[$Blue\]<>\[$Yellow\]\[$Yellow\]$(eval "echo ${MYPS}")\[\033[m\]" "\[$White\]\n\$ "'

##PS1="\[\e[37;1m\][\W]\[\e[0m\]$ "

export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=
export AWS_REGION='us-east-1'
##export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home
export JAVA_HOME=$(/usr/libexec/java_home)
export AWS_AUTO_SCALING_HOME=/Users/rdyer/scripts/AutoScaling-1.0.61.2

export PATH=$PATH:$AWS_AUTO_SCALING_HOME

## Go stuff
export GOMAXPROCS=4

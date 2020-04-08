#if [ -f ~/.bashrc ]; then
#  . ~/.bashrc
#fi

PS1="\[\e[95m\]\W $ \[\e[0m\]"

alias be='bundle exec' 


alias gitcae='git commit --allow-empty -m "wip"'
alias gitlog='git log --oneline --graph'


# show git branch
# wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -O ~/.git-prompt.sh
# chmod a+x ~/.git-prompt.sh

# source ~/.git-prompt.sh
# export PS1='\h:\W \u \[\e[1;32m $(__git_ps1 "(%s)") \[\e[0m\] \$ '
# PS1=':+($debian_chroot)}  \[\033[01;32m\]  \u@  \[\033[00m\]  :  \[\033[01;34m\]  \W     \[\e[93m\]$(__git_ps1 "(%s)")   \[\e[00m\]  \$ '

# show git branch on mac
# source /usr/local/etc/bash_completion.d/git-prompt.sh
# PS1="\[\e[95m\]\W $ \[\e[0m\]"

# if type __git_ps1 > /dev/null 2>&1 ; then
#   PROMPT_COMMAND="__git_ps1 '\[\e[95m\]\W\[\e[0m\]' '\[\e[93m\]\\\$ \[\e[0m\]'; $PROMPT_COMMAND"
#   GIT_PS1_SHOWDIRTYSTATE=true
#   GIT_PS1_SHOWSTASHSTATE=true
#   GIT_PS1_SHOWUNTRACKEDFILES=true
#   GIT_PS1_SHOWUPSTREAM="auto"
#   GIT_PS1_SHOWCOLORHINTS=true
# fi

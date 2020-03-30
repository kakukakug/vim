#if [ -f ~/.bashrc ]; then
#  . ~/.bashrc
#fi

PS1="\[\e[95m\]\W $ \[\e[0m\]"

alias be='bundle exec' 


alias gitcae='git commit --allow-empty -m "wip"'
alias gitlog='git log --oneline --graph'


# show git branch
# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
# source ~/.git-prompt.sh

# export PS1='\h:\W \u \[\e[1;32m $(__git_ps1 "(%s)") \[\e[0m\] \$ '

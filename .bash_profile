
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#variant 1
#export PS1="\[\033[36m\]\h:~ \[\033[32m\]\u\[\033[m\]\$ "

#variant 2
export PS1="\[\033[36m\]\u@ \[\033[32m\]\w/\[\033[m\]\$(parse_git_branch)\[\033[00m\]$ "


#variant 3
#export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "



export CLICOLOR=1

export LSCOLORS=gxFxBxDxCxegedabagacad

alias ls='ls -Fh'
alias word='open -a "Microsoft Word" '

shopt -s cmdhist
shopt -s histappend

if [ -f "/etc/bashrc" ] ; then
    source /etc/bashrc
fi

function linuxdistro() {
    if [ `grep Cygwin /etc/issue|wc -l` == 1 ]; then
        echo "cygwin"
    elif [ `grep Oracle /etc/issue|wc -l` == 1 ]; then
        echo "oel"
    elif [ `grep 'Red Hat' /etc/issue|wc -l` == 1 ]; then
        echo "rhel"
    else
        echo "linux"
    fi
}

# PS1='\[e]0;\w\a]\[\033[38;5;002m\]\u@\h \[\033[38;5;003m\]\W \$ \[\033[m\]' #256 color mode
PS1='\[\e]0;\w\a\]\[\e[0;32m\]\u@\h \[\e[0;33m\]\W \$ \[\e[m\]'
# \[\e]0;\w\a\] sets the pwd in the window title
#      \e]0; - Starts the xterm title prompt expression
#      \a    - Equal to \007 (system bell).  In this case used to end the xterm title prompt.
export PS1

# Aliases

alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias df='df -h'
alias du='du -h'
alias ll='ls -lhF --color=auto'
alias la='ls -alhF --color=auto'
alias ls='ls -hF --color=auto'
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour 
alias vi='vim'
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'

case `linuxdistro` in
cygwin)
    alias ping='$SYSTEMROOT/system32/ping
    ';;
esac

# LESS man page colors (makes Man pages more readable).
case `linuxdistro` in
cygwin)
    export PAGER=most
    ;;
*)
    export LESS_TERMCAP_mb=$'\E[01;31m'
    export LESS_TERMCAP_md=$'\E[01;31m'
    export LESS_TERMCAP_me=$'\E[0m'
    export LESS_TERMCAP_se=$'\E[0m'
    export LESS_TERMCAP_so=$'\E[01;44;33m'
    export LESS_TERMCAP_ue=$'\E[0m'
    export LESS_TERMCAP_us=$'\E[01;32m'
    ;;
esac


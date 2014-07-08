shopt -s histappend
#
PS1='\e[0;32m\u@\h \e[0;33m\W \$ \e[m'
export PS1
#
# Aliases
#
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias df='df -h'
alias du='du -h'
alias ll='ls -lhF --color=auto'
alias la='ls -alhF --color=auto'
alias ls='ls -hF --color=auto'
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour 
#
alias vi=vim
#
if [ -f "/etc/bashrc" ] ; then
	source /etc/bashrc
fi

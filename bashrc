shopt -s histappend
#
# PS1='\[\033[38;5;002m\]\u@\h \[\033[38;5;003m\]\W \$ \[\033[m\]' #256 color mode
PS1='\[\e[0;32m\]\u@\h \[\e[0;33m\]\W \$ \[\e[m\]' #16 color mode
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
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour 
#
alias vi=vim
#
if [ -f "/etc/bashrc" ] ; then
	source /etc/bashrc
fi

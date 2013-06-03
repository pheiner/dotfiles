# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
case "$TERM" in 
        screen*) printf %bk%s%b%b \\033 "${HOSTNAME%%.*}" \\033 \\0134
        ;;
esac 
export PS1='\[\033[01;32m\]\h\[\033[01;34m\] \w\[\033[31m\]$(__git_ps1 "(%s)") \[\033[01;34m\]$\[\033[00m\] '
SSH_AGENT_PID=`pgrep -U $USERNAME ssh-agent` || eval `ssh-agent` > /dev/null
ssh-add -L > /dev/null || ssh-add

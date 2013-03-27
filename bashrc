# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -f /etc/bash_completion.d/git ]; then
	source /etc/bash_completion.d/git
fi

alias grep="grep --color"
export TERM=screen-256color
alias tmux="tmux -u2"
set -o vi
export PAGER="less"

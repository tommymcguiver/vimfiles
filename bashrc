# .bashrc

IS_MAC="$( if uname -a | grep -qi darwin; then echo 'yes'; else 'no'; fi)"

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -f /etc/bash_completion.d/git ]; then
	source /etc/bash_completion.d/git
fi

if [ -f /opt/local/etc/bash_completion ]; then
	. /opt/local/etc/bash_completion;
fi

alias grep="grep --color"
export TERM=screen-256color
alias tmux="tmux -u2"
set -o vi
export PAGER="less"

if [ "${IS_MAC}" = "yes" ]; then
	eval `perl -I ~/perl5/lib/perl5 -Mlocal::lib`
	alias ls="ls -G";
fi

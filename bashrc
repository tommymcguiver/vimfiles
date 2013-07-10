# .bashrc

#local bins to override search path
if [ -d $HOME/bin ]; then
	export PATH=$HOME/bin:$PATH
fi

export IS_MAC="$( if uname -a | grep -qi darwin; then echo 'yes'; else echo 'no'; fi)"

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
alias tmux="tmux -u2"
set -o vi
export PAGER="less"

#Adds readline functionality to node REPL
if which -s node && which -s rlwrap; then
	alias node='env NODE_NO_READLINE=1 rlwrap -p Green -S "node >>> " node'
fi

#if cpanm installed then source.
if [ -d ${HOME}/perl5/lib/perl5 ]; then
	eval `perl -I ~/perl5/lib/perl5 -Mlocal::lib`
fi

#ruby envirnoment manager.
if [ -x ${HOME}/.rvm/scripts/rvm ]; then
	source ${HOME}/.rvm/scripts/rvm
	PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
fi

#Color and fancy symols at end of file so i know what they are.
alias ls="ls -G -F";
alias opentcp="lsof -i TCP -c"
alias opentcpuser="lsof -u $(whoami) -a -i TCP"
alias ymd="date +'%Y-%m-%d %H:%M:%S'"

if which -s rbenv; then
	eval "$(rbenv init -)"
fi

if [ "${IS_MAC}" = "yes" ]; then
	#Usefull alias's
	export LC_ALL="en_AU.UTF-8"
else

	#if term is not 256 colors then force it god damn it! This is 2013
	if !echo $TERM | grep -q 256; then
		export TERM=screen-256color
	fi
fi

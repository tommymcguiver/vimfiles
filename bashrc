# .bashrc

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

#Source local files
if [ -d /usr/local/etc/bash_completion.d ]; then
	for i in /usr/local/etc/bash_completion.d/*; do
		. $i;
	done
fi

. ~/.vim/common-environment

#!/bin/sh
# .bash_profile

echo "IN $HOME/.bash_profile"

##export PATH=/bin:/usr/bin:/sbin:/usr/sbin:/opt/java/jre/bin:


# remove duplicate path entries from $1

cleanpath() {
	local i=1 x n IFS=:
	local -a paths;	paths=($1)

	for ((n=${#paths[*]}-1;i<=n;i++)); do
                [ ! -d ${paths[i]} ] && { unset paths[i]; continue; }
		for ((x=0;x<i;x++)); do
			test "${paths[i]}" == "${paths[x]}" && { unset paths[i]; continue 2; }
		done; 
	done; echo "${paths[*]}"
}

export PATH=$PATH:$HOME/bin:/usr/local/bin:/opt/kde/bin
export CDPATH=:.:$HOME:..:$HOME/w:/home:/:/etc:/root/Dropbox:/opt:/opt/root_home
export DOTDIR=$HOME/.dot EDITOR='/usr/bin/vim'
[ -e $DOTDIR/inputrc ] && INPUTRC=$DOTDIR/inputrc || INPUTRC=/etc/inputrc

HISTSIZE=2000; HISTFILESIZE=2000; HISTFILE=$DOTDIR/history; HISTCONTROL=erasedups

export allow_null_glob_expansion=1 command_oriented_history=on
export TMP=/var/tmp TEMP=/var/tmp TMPDIR=/var/tmp
export HISTTIMEFORMAT="%F %T "

export HISTSIZE HISTFILESIZE BASH_ENV INPUTRC

ulimit -S -c 0 > /dev/null 2>&1                          # No core files by default

umask u=rwx,g=rwx,o=rx
set -o vi
#shopt -s histappend hostcomplete nocaseglob

# Bash completion
set show-all-if-ambiguous on

export MOZ_DISABLE_PANGO=1                          # for firefox
##MOZ_ACCELERATED=1 MOZ_GLX_IGNORE_BLACKLIST=1 firefox
export GREP_COLOR="1;33"
export FZ_DATADIR=~/.filezilla
export LESS=-RX
export NOCHECK="-o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"
#export LESSOPEN="|lesspipe.sh %s"

#TZ='Europe/Lisbon'; export TZ

amixer set Master unmute 60% >/dev/null
#amixer set Front unmute 100  >/dev/null%
#amixer set Headphone unmute 100% >/dev/null

if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

#[ -e /etc/bash_completion ] && . /etc/bash_completion
alias hconfig='git --git-dir=/root/.hconfig.git/ --work-tree=/root'

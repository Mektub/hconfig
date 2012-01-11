#!/bin/bash
# .bashrc

# User specific aliases and functions


### If not running interactively, don't do anything
##[ -z "$PS1" ] && return

if [[ $- != *i* ]] ; then
        # Shell is non-interactive.  Be done now!
        return
fi

echo "IN $HOME/.bashrc"
archey -c red

. $HOME/.dot/aliases
. $HOME/.dot/colors
. $HOME/.dot/functions

pathmunge ()
{
    if ! echo $PATH | /bin/egrep -q "(^|:)$1($|:)"; then
        if [ "$2" = "after" ]; then
            PATH=$PATH:$1;
        else
            PATH=$1:$PATH;
        fi;
    fi
}

cleanpath() {
        local i=1 x n IFS=:
        local -a paths; paths=($1)

        for ((n=${#paths[*]}-1;i<=n;i++)); do
                [ ! -d ${paths[i]} ] && { unset paths[i]; continue; }
                for ((x=0;x<i;x++)); do
                        test "${paths[i]}" == "${paths[x]}" && { unset paths[i]; continue 2; }
                done; 
        done; echo "${paths[*]}"
}

ZWI=$(tty)
TTY=$(basename $ZWI) 2> /dev/null
HOSTNAME=$(hostname)

[ "$TERM" = "xterm" ] && export TERM=xterm-256color

if [ "$TERM" != "linux" ]
   then
	   [ "x$SSH_CLIENT" == "x" ] && {
		PS1="\n$HOSTNAME - $LOGNAME ($TTY) [$SHLVL] - \$PWD\n> "
           } || {
		PS1="\n\e[0;36m$HOSTNAME - $LOGNAME ($TTY) [$SHLVL] - \$PWD\n> "
           }


#       PS1="\n$HOSTNAME - $LOGNAME ($TTY) [$SHLVL] - \$PWD\n> "
   else
        case "$TTY" in
           tty1) PS1="${CYANLIGHT}\n$LOGNAME ($TTY) [$SHLVL] - \$PWD\n> " ;;
           tty2) PS1="${YELLOWLIGHT}\n$LOGNAME ($TTY) [$SHLVL] - \$PWD\n> " ;;
           tty3) PS1="${GREENLIGHT}\n$LOGNAME ($TTY) [$SHLVL] - \$PWD\n> " ;;
           tty4) PS1="${BLUELIGHT}\n$LOGNAME ($TTY) [$SHLVL] - \$PWD\n> " ;;
           tty5) PS1="${PURPLELIGHT}\n$LOGNAME ($TTY) [$SHLVL] - \$PWD\n> " ;;
              *) PS1="\n$LOGNAME ($TTY) [$SHLVL] - \$PWD\n> " ;;
        esac
fi

export PS1
export PS2="> "
export PS3="#? "
export PS4="+"

# User specific environment and startup programs

export CDPATH=:.:$HOME:..:$HOME/w:/home:/:/etc:/root/Dropbox::/opt:/opt/root_home
export DOTDIR=$HOME/.dot 
[ -e $DOTDIR/inputrc ] && INPUTRC=$DOTDIR/inputrc || INPUTRC=/etc/inputrc

pathmunge $HOME/bin
PATH=$(cleanpath $PATH)
export PATH

echo PATH=$PATH

export BROWSER=firefox PAGER=less EDITOR=/usr/bin/vim FCEDIT="vim"
export allow_null_glob_expansion=1 command_oriented_history=on
export TMP=/var/tmp TEMP=/var/tmp TMPDIR=/var/tmp
export HISTTIMEFORMAT="%F %T "
export NNTPSERVER='news.gmane.org'
export PAGER=/usr/bin/vimpager
alias less=$PAGER

unset USERNAME
export MOZ_GLX_IGNORE_BLACKLIST=1

export MAIL=/var/spool/mail/john
export MAILPATH='/var/spool/mail/john?You have mail in john:/var/spool/mail/WebDe?$_ has mail:/var/spool/mail/.junkmail?$_ has mail'

#export LANG="en_US.UTF-8"
export LANG="en_IE.utf-8"
export SYSFONT="latarcyrheb-sun16"

export SUPPORTED="en_IE.utf-8:en_US.UTF-8:en_US:en:pt_PT.UTF-8:pt_PT:pt"
export LC_COLLATE="C"
export LC_TIME="pt_PT.UTF-8"
export LC_ADDRESS="pt_PT.UTF-8"
export LC_NAME="pt_PT.UTF-8"
export LC_NUMERIC="pt_PT.UTF-8"
export LC_MEASUREMENT="pt_PT.UTF-8"
export LC_MESSAGES="en_IE.UTF-8"
export LC_CTYPE="en_IE.UTF-8"
export LC_TELEPHONE="pt_PT.UTF-8"
export LC_MONETARY="pt_PT.UTF-8"
export LC_PAPER="pt_PT.UTF-8"

export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'                           
export LESS_TERMCAP_so=$'\E[01;44;33m'                                 
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

#if [ -f ~/.dir_colors ]; then
#    eval `dircolors ~/.dir_colors`
#fi

if [ -f ~/.LS_COLORS ]; then
    . ~/.LS_COLORS
fi

# bash options ------------------------------------
shopt -s autocd             # change to named directory
shopt -s cdable_vars        # if cd arg is not valid, assumes its a var defining a dir
shopt -s cdspell            # autocorrects cd misspellings
shopt -s checkwinsize       # update the value of LINES and COLUMNS after each command if altered
shopt -s cmdhist            # save multi-line commands in history as single line
shopt -s dotglob            # include dotfiles in pathname expansion
shopt -s expand_aliases     # expand aliases
shopt -s extglob            # enable extended pattern-matching features
shopt -s hostcomplete nocaseglob

# share history across all terminals
shopt -s histappend
PROMPT_COMMAND='history -a'

# Enable __tab-completion__ with sudo

complete -cf sudo

# Source global definitions

if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

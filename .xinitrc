#!/bin/sh
#
# ~~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

xhost + &

[ -f ~/.xprofile ] && . ~/.xprofile

#eval `cat $HOME/.fehbg` &                   # set background
#numlockx on &                               # numlock on
#setxkbmap -option terminate:ctrl_alt_bksp & # C-A-BS to kill X
#urxvtd -q -f -o &                           # start urxvt daemon
#xcompmgr -fF &                              # allow transparency
#xmodmap $HOME/.Xmodmap &                    # remove capslock
#xrdb $HOME/.Xdefaults &                     # load Xdefaults
#xset fp+ /usr/share/fonts/local &           # add local fonts
#xset s 1200 1200 &                          # set monitor to sleep 20 mins


#xsetroot -solid cyan
#xli -onroot -border cyan -center  ~/.wall.jpg
##xli -onroot -fillscreen ~/.wall.jpg
#xsetroot -cursor_name top_left_arrow
#xclock -norender -bg cyan -fg black -font 7x13 -update 1 -d -g -0+0 &
#xterm -hold +bc -bg cyan -fg black -fn 9x15 -g 140x2+0-0 -e cat .help &


# twm
# exec ion
# exec wmaker
# exec ck-launch-session startkde
##exec ck-launch-session icewm-session
# exec ck-launch-session blackbox
## exec ck-launch-session gnome-session
# exec ck-launch-session startfluxbox
# exec ck-launch-session startxfce4
# exec ck-launch-session openbox

if [ -z $1 ]; then
	    WM="icewm-session"
	else
	    WM=$1
fi

exec ck-launch-session dbus-launch $WM

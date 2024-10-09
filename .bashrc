# ~/.bashrc: executed by bash(1) for non-login shells.

# exclude non-interactive shells
case $- in
	*i*) ;;
	*) return;;
esac

#history settings
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

#set color prompt if supported
case "$TERM" in
	xterm-color|*-256color) color_prompt=yes;;
esac
if [ "$color_prompt" = yes ]; then
	PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
	PS1='\u@\h:\w\$ '
fi


# terminal window title
# https://tldp.org/HOWTO/Xterm-Title-3.html
case "$TERM" in
xterm*|rxvt*)
	PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
	;;
*)
	;;
esac

#auto resize
#shopt -s checkwinsize
# less improvent
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
fi

#enable GCC color warnings
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

#load external file
EXTERNAL_FILES=(
	"$HOME/.bash_aliases"
	"$HOME/.bash_variables"
)
for filename in ${EXTERNAL_FILES[@]}; do
	if [ -f $filename ]; then
		source "$filename"
	fi
done

export EDITOR="vim"
export VISUAL="vim"

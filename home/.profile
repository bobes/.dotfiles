PATH="$PATH:/usr/sbin"

if [ -d "$HOME/bin" ] ; then
	PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.rbenv/bin" ] ; then
	export PATH="$HOME/.rbenv/bin:$PATH"
	eval "$(rbenv init -)"
fi

setxkbmap -layout us -option -option compose:ralt -option ctrl:nocaps && pkill -RTMIN+2 i3blocks

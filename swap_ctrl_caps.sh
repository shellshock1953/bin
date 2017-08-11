/usr/bin/setxkbmap -option "ctrl:nocaps"
if [ "$?" = 0 ]; then
	echo "- Swapped Ctrl and Caps for better Tmux navigation"
else
	echo "- ERROR: Cant swap Ctrl and Caps"
fi

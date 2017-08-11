ID=`xinput -list | grep "Wacom Bamboo 16FG 4x5 Finger"| cut -d"=" -f2| cut -c1-2`
if [ ! -z "$ID" ]; then
	xinput set-prop $ID "Device Enabled" 0
	if [ "$?" = 0 ]; then
		echo "- Wacom Touch disabled"
	else
		echo "- Wacom Touch is NOT disabled"
	fi
else
	echo "- Cant locate Wacom Tablet"
fi

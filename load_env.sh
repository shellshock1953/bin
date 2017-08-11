ENV_PATH='/data/shellshock/env/bin/activate'
if [ -f "$ENV_PATH" ]; then
	source $ENV_PASH
	if [ "$?" = 0 ]; then
		echo "- Python env has been activated"
	else
		echo "- ERROR: Python env has NOT been activated"
	fi
else
	echo "- No Python env located"
fi

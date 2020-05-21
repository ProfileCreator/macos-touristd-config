#!/bin/bash

TOURISTD_URL="https://help.apple.com/macOS/config.json"
REPO="macos-touristd-config"
WDIR=$(/bin/pwd)
DIR=$(/usr/bin/basename $WDIR)

# Check that we're running this from the repo
if [ "$DIR" != "$REPO" ]; then
	/bin/echo "Please change the working directory path to the cloned repo."
	/bin/echo "Working directory name must match: ${REPO}"
	exit 1
fi

/usr/bin/curl "$TOURISTD_URL" -o ${PWD}/config.json

exit
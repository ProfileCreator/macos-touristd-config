#!/bin/bash

TOURISTD_URL="https://help.apple.com/macOS/config.json"
SCRIPT_DIRECTORY="$(/usr/bin/dirname "$0")"

echo "Downloading latest touristd config.json..."
/usr/bin/curl "${TOURISTD_URL}" -o "${SCRIPT_DIRECTORY}/config.json"
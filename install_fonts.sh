#!/bin/bash

# Check if an argument is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <zipfile>"
    exit 1
fi

# The ZIP file provided as an argument
ZIPFILE="$1"

# Check if the ZIP file exists
if [ ! -f "$ZIPFILE" ]; then
    echo "Error: File '$ZIPFILE' not found!"
    exit 1
fi

# Create fonts directory if it doesn't exist
FONT_DIR="$HOME/.local/share/fonts"
mkdir -p "$FONT_DIR"

# Extract the ZIP file to the fonts directory
unzip "$ZIPFILE" -d "$FONT_DIR"

# Update font cache
fc-cache -fv

echo "Fonts from $ZIPFILE installed successfully."


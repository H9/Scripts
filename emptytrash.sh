#!/bin/bash

# if trash is empty
trash_empty=$(osascript <<EOF
tell application "Finder"
    if count of items in trash = 0 then
        return "empty"
    else
        return "not_empty"
    end if
end tell
EOF
)

if [ "$trash_empty" = "empty" ]; then
    echo "Trash is already empty."
else
    # try to empty trash
    if osascript -e 'tell application "Finder" to empty trash'; then
        echo "Trash emptied successfully."
    else
        echo "Failed to empty the trash. Please check if any files are in use."
    fi
fi
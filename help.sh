#!/bin/bash
# try default browser
if ! open "https://binhua.org/h9"; then
    # if failed, try other browers
    if [ -x "$(command -v google-chrome)" ]; then
        google-chrome "https://binhua.org/h9"
    elif [ -x "$(command -v firefox)" ]; then
        firefox "https://binhua.org/h9"
    elif [ -x "$(command -v safari)" ]; then
        safari "https://binhua.org/h9"
    else
        echo "Unable to open the help page. Please check your browser settings."
        exit 1
    fi
fi
echo "Help page has been opened in your browser."
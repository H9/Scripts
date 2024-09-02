#!/bin/bash

# use command: pmset
pmset displaysleepnow

# if pmset failed，try osascript
if [ $? -ne 0 ]; then
    osascript -e 'tell application "System Events" to keystroke "q" using {command down,control down}'
fi
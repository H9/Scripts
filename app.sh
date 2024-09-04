#!/bin/bash

CACHE_FILE="$HOME/.h9launcher/app_index_cache"
CACHE_EXPIRY_DAYS=7

create_app_index() {
    mkdir -p "$(dirname "$CACHE_FILE")"
    echo "Creating app index..."
    
    # temp
    TEMP_FILE=$(mktemp)
    
    # find applications and add them into temp
    find /Applications /System/Applications ~/Applications \
         /Applications/Utilities /System/Applications/Utilities \
         -maxdepth 3 -name "*.app" | while read -r app; do
        name=$(basename "$app" .app | tr '[:upper:]' '[:lower:]' | tr ' ' '-')
        echo "$name:$app"
    done | sort > "$TEMP_FILE"
    
    # move temp to cache
    mv "$TEMP_FILE" "$CACHE_FILE"
    
    echo "App index updated."
}

update_cache_if_needed() {
    if [ ! -f "$CACHE_FILE" ] || [ $(find "$CACHE_FILE" -mtime +$CACHE_EXPIRY_DAYS 2>/dev/null) ]; then
        create_app_index
    fi
}

open_app() {
    update_cache_if_needed
    search_term=$(echo "$1" | tr '[:upper:]' '[:lower:]' | tr ' ' '-')
    result=$(grep -i "$search_term" "$CACHE_FILE" | head -n 1)
    
    if [ -n "$result" ]; then
        app_path=$(echo "$result" | cut -d':' -f2)
        open "$app_path"
        echo "Opening $app_path"
    else
        echo "No matching application found for '$1'"
    fi
}

if [ $# -eq 0 ]; then
    echo "Usage: $0 <app_name> or $0 refreshindex"
    exit 1
fi

if [ "$1" = "refreshindex" ]; then
    create_app_index
else
    open_app "$1"
fi
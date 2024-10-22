#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DOTFILES_DIR="$(dirname "$SCRIPT_DIR")"  # Parent of scripts directory
LIST_FILE="$SCRIPT_DIR/list"

# Function to sync dotfiles from home directory to dotfiles repository
sync_dotfiles() {
    # Define source (home directory)
    SOURCE_DIR="$HOME"

    # Check if list file exists
    if [ ! -f "$LIST_FILE" ]; then
        echo "Error: List file not found at $LIST_FILE"
        return 1
    fi

    echo "Syncing dotfiles from $SOURCE_DIR to $DOTFILES_DIR"
    echo "Using paths from $LIST_FILE"
    echo "-----------------------------------"

    # Read paths from list file and sync each one
    while IFS= read -r path || [ -n "$path" ]; do
        # Skip empty lines and comments
        [[ -z "$path" || "$path" =~ ^# ]] && continue
        
        # Trim whitespace
        path=$(echo "$path" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')
        
        source_path="$SOURCE_DIR/$path"
        dest_path="$DOTFILES_DIR/$path"

        # Check if source path exists
        if [ ! -e "$source_path" ]; then
            echo "Warning: Source path does not exist: $source_path"
            continue
        fi

        # Create parent directories if they don't exist
        mkdir -p "$(dirname "$dest_path")"

        # Copy files/directories, preserving permissions and overwriting existing files
        if [ -d "$source_path" ]; then
            # For directories, use rsync to handle nested files
            rsync -av --delete "$source_path/" "$dest_path/"
            echo "✓ Synced directory: $path"
        else
            # For single files, use cp
            cp -f "$source_path" "$dest_path"
            echo "✓ Synced file: $path"
        fi
    done < "$LIST_FILE"

    echo "-----------------------------------"
    echo "Dotfiles sync completed!"
}

# Run the sync function
sync_dotfiles

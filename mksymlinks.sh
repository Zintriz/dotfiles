#!/bin/bash
# 1. get all files in a directory($HOME/dotfiles/config) and make the folders that they are in.
# 2. symlink the files in the directory to their respective location in another directory eg. $HOME/dotfiles/config -> $HOME/.config
#
#

# Define source and target directories
SOURCE_DIR="$HOME/dotfiles/config"
TARGET_DIR="$HOME/.config"

# Ensure the source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Source directory does not exist: $SOURCE_DIR"
    exit 1
fi

# Iterate over all files in the source directory
find "$SOURCE_DIR" -type f | while read -r file; do
    # Get the relative path of the file
    rel_path="${file#$SOURCE_DIR/}"
    
    # Determine the target file path
    target_file="$TARGET_DIR/$rel_path"
    
    # Create the directory structure in the target location
    mkdir -p "$(dirname "$target_file")"
    
    # Create the symlink, overwriting existing files if necessary
    ln -sf "$file" "$target_file"
    echo "Symlinked: $file -> $target_file"
done

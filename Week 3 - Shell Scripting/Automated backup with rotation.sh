#!/bin/bash
# ===============================================================
# Script Name : backup_with_rotation.sh
# Description : Perform backup of a directory with 3-backup rotation
# Author      : <Your Name>
# ===============================================================

# Check if directory path is given
if [ -z "$1" ]; then
    echo "Usage: $0 <directory_path>"
    exit 1
fi

DIR=$1

# Check if directory exists
if [ ! -d "$DIR" ]; then
    echo "Error: Directory $DIR does not exist!"
    exit 1
fi

# Create timestamp for backup folder
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_DIR="$DIR/backup_$TIMESTAMP"

# Create backup folder and copy files
mkdir "$BACKUP_DIR"
cp -r "$DIR"/* "$BACKUP_DIR" 2>/dev/null
echo "✅ Backup created: $BACKUP_DIR"

# Keep only last 3 backups (delete older ones)
cd "$DIR" || exit
BACKUPS=( $(ls -dt backup_* 2>/dev/null) )

if [ ${#BACKUPS[@]} -gt 3 ]; then
    OLD_BACKUPS=( "${BACKUPS[@]:3}" )
    for old in "${OLD_BACKUPS[@]}"; do
        rm -rf "$old"
        echo "🗑️ Old backup removed: $old"
    done
fi

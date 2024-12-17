#!/bin/bash

# Set source and backup directories
source_dir="/home/bootlabsuser/Downloads/shell-scripting1"
backup_dir="/home/bootlabsuser/shell-scripting2"

# Ensure the backup directory exists
mkdir -p "$backup_dir"

# Create a timestamp for the backup file
timestamp=$(date +%Y%m%d_%H%M%S)

# Create a compressed tarball of the source directory
tar -czf "$backup_dir/backup_$timestamp.tar.gz" -C "$source_dir" .

# Print success message
echo "Backup completed successfully: $backup_dir/backup_$timestamp.tar.gz"

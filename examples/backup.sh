#!/bin/bash

###############################################################################
# Script Name : backup.sh
# Description : Creates a compressed backup of a specified directory.
# Author      : Vishwa Keshara
# Repository  : devops-linux-fundamentals
###############################################################################

# Source directory to back up
SOURCE_DIR="$HOME/Documents"

# Backup destination
BACKUP_DIR="$HOME/backups"

# Current date and time
DATE=$(date +"%Y-%m-%d_%H-%M-%S")

# Backup file name
BACKUP_FILE="backup_$DATE.tar.gz"

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

echo "========================================"
echo "Linux Backup Script"
echo "========================================"

echo "Source Directory : $SOURCE_DIR"
echo "Backup Location  : $BACKUP_DIR"
echo ""

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: Source directory does not exist!"
    exit 1
fi

echo "Creating backup..."

# Create compressed backup
tar -czf "$BACKUP_DIR/$BACKUP_FILE" "$SOURCE_DIR"

# Verify backup
if [ $? -eq 0 ]; then
    echo ""
    echo "Backup completed successfully!"
    echo "Backup File: $BACKUP_DIR/$BACKUP_FILE"
else
    echo ""
    echo "Backup failed!"
    exit 1
fi

echo ""
echo "Available Backups:"
ls -lh "$BACKUP_DIR"

echo ""
echo "Backup Process Finished."

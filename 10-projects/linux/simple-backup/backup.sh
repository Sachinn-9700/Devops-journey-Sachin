#!/bin/bash

# Directory to back up
SOURCE_DIR="/etc"

# Backup destination
BACKUP_DIR="$HOME/backups"

# Create backup directory if not exists
mkdir -p $BACKUP_DIR

# Date format
DATE=$(date +"%Y-%m-%d_%H-%M-%S")

# Backup file name
BACKUP_FILE="backup_$DATE.tar.gz"

echo "Starting backup..."
echo "Source: $SOURCE_DIR"
echo "Destination: $BACKUP_DIR/$BACKUP_FILE"

# Create backup
tar -czf $BACKUP_DIR/$BACKUP_FILE $SOURCE_DIR

if [ $? -eq 0 ]; then
  echo "Backup completed successfully ✅"
else
  echo "Backup failed ❌"
fi
echo "Backup file created at: $BACKUP_DIR/$BACKUP_FILE"
#!/bin/bash

# Define the backup and source directories
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
BACKUP_DIR="/e/Task_01/backup_01"
SOURCE_DIR="/e/Task_01/backup_02"
BACKUP_FILE="$BACKUP_DIR/config_backup_$TIMESTAMP.tar.gz"

# Generate a timestamp
echo "Timestamp: $TIMESTAMP"

# Ensure the backup directory exists
if [ ! -d "$BACKUP_DIR" ]; then
  mkdir -p "$BACKUP_DIR"
  echo "Backup directory created: $BACKUP_DIR"
fi

# Create the tar.gz backup file
if [ -f "$SOURCE_DIR/task.txt" ]; then
  tar -czf "$BACKUP_FILE" -C "$SOURCE_DIR" .
  echo "Backup completed: $BACKUP_FILE"
else
  echo "Source file not found: $SOURCE_DIR/task.txt" >&2
  exit 1
fi

# Check if the backup was successful
if [ $? -eq 0 ]; then
  echo "Backup completed successfully!"
else
  echo "Backup failed!" >&2
  exit 1
fi

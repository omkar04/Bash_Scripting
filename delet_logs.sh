#!/bin/bash

LOG_DIR="/e/Task_01/backup_02"
find $LOG_DIR -type f -name "*.txt" -mtime +1 -exec rm -f {} \;
echo "Old log files deleted."